#!/usr/bin/env python3
import sys
import rospy
import numpy as np
import tf2_ros
import tf2_geometry_msgs
import math
import message_filters
import mediapipe as mp

from copy import deepcopy, copy
from std_srvs.srv import Trigger, TriggerRequest
from geometry_msgs.msg import PoseStamped, Pose, Point
from visualization_msgs.msg import Marker
from visualization_msgs.msg import MarkerArray
from odas_ros.msg import OdasSstArrayStamped, OdasSst
from audio_utils.msg import AudioFrame
from audio_utils import get_format_information, convert_audio_data_to_numpy_frames
from ssl_frontier_selection.srv import GetGraded, GetGradedResponse

MODEL_PATH = '/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/ssc_models/lite-model_yamnet_classification_tflite_1.tflite'

class grade_crystal:

    def __init__(self, param_dict):
        
        # transfer params to class
        self.crystal_topic = param_dict.get("crystal_sub")
        self.sst_topic = param_dict.get("sst_sub")
        self.sss_topic = param_dict.get("sss_sub")
        self.graded_topic = param_dict.get("graded_pub")

        # frames for tf2. Overwritten by incoming messages
        self.world = param_dict.get("world_frame")
        self.sensor = param_dict.get("sensor_frame")

        self.format = get_format_information('signed_16')

        self.frontier_markers = MarkerArray()
        self.graded_frontiers = MarkerArray()

        # service variables
        self.get_graded_srv = param_dict.get("grading_srv")
        self.discrete = bool(param_dict.get("discrete"))
        self.discrete_wait = float(param_dict.get("discrete_wait"))
        self.id_list = []
        self.point_list = []
        self.graded_time = rospy.Time.now()

        # ssc variables
        self.ssc_window = float(param_dict.get("ssc_window"))
        self.ssc_threshold = float(param_dict.get("ssc_threshold"))
        self.source_classes = ["Speech", "Conversation", "Narration, monologue", "Whispering"] # list of classes related to the sound source (Yamnet/AudioSet)

        # median filter
        self.ssc_median_history = []
        self.ssc_median_window = 5.0 / float(param_dict.get("ssc_rate")) # amount of time in sec required for 5 measurements from sss

        self.AudioClassifier = mp.tasks.audio.AudioClassifier
        self.AudioClassifierOptions = mp.tasks.audio.AudioClassifierOptions
        
        self.AudioRunningMode = mp.tasks.audio.RunningMode
        self.BaseOptions = mp.tasks.BaseOptions
        self.AudioData = mp.tasks.components.containers.AudioData

        self.options = self.AudioClassifierOptions(
            base_options=self.BaseOptions(model_asset_path=MODEL_PATH), 
            running_mode=self.AudioRunningMode.AUDIO_CLIPS, max_results=4)
        
        self.classifier = self.AudioClassifier.create_from_options(self.options)

        # storage for sound goal
        self.sst_switch = 0
        self.sst_prev = None
        self.sst_sss_channel_link = {0:None, 1:None, 2:None, 3:None}
        self.odas_synced_data = {}
        self.sst_uv = None
        self.all_audio = np.array([[np.zeros(128), np.zeros(128), np.zeros(128), np.zeros(128), rospy.get_time()]], dtype=object)

        # setup subs and pubs and srv
        self.crystal_sub = rospy.Subscriber(self.crystal_topic, MarkerArray, self.frontier_callback, queue_size=5)
        self.sst_sub = message_filters.Subscriber(self.sst_topic, OdasSstArrayStamped)
        self.sss_sub = message_filters.Subscriber(self.sss_topic, AudioFrame)

        # synchronize sst and sss callbacks from odas
        self.odas_sync = message_filters.ApproximateTimeSynchronizer([self.sst_sub, self.sss_sub], queue_size=10, slop=0.02)
        self.odas_sync.registerCallback(self.pull_odas_data_linked)
    
        # odas activation/deactivation services
        rospy.wait_for_service("/odas/start", timeout=1.0) # TODO raise an exception if we can't connect to these services
        rospy.wait_for_service("/odas/stop", timeout=1.0)
        self.odas_on = rospy.ServiceProxy("/odas/start", Trigger)
        self.odas_off = rospy.ServiceProxy("/odas/stop", Trigger)

        self.graded_pub = rospy.Publisher(self.graded_topic, MarkerArray, queue_size=10)

        self.get_graded = rospy.Service(self.get_graded_srv, GetGraded, self.get_graded_frontiers)

        self.tf_buffer = tf2_ros.Buffer(rospy.Duration(10.0))  # tf buffer length
        self.tf_listener = tf2_ros.TransformListener(self.tf_buffer)

        # publish at set rate
        self.rate = rospy.Rate(float(param_dict.get("ssc_rate"))) # ssc_rate Hz

        # wait for initial mic data to fill
        rospy.sleep(float(param_dict.get("ssc_rate")))


        odas_trigger = TriggerRequest()

        if not self.discrete:
            # in continuous mode we want odas always running
            on = self.odas_on(odas_trigger)
            if on.success:
                rospy.loginfo(on.message)
            else:
                rospy.logerr("Odas failed to start")
            
        while not rospy.is_shutdown():
            self.ssc_goal_selection()

            self.graded_pub.publish(self.graded_frontiers)
            self.rate.sleep()

        # shutdown odas when ros closes (just for clarity)
        off = self.odas_off(odas_trigger)

    def pull_odas_data_linked(self, sst_data, sss_data):

        np_audio = convert_audio_data_to_numpy_frames(self.format, sss_data.channel_count, sss_data.data)

        rec_time = rospy.get_time() # float seconds
        trim_time = rec_time - 10.0

        # record sst uv's
        self.sst_uv = sst_data.sources

        # add newest audio
        self.all_audio = np.append(self.all_audio, [[np_audio[0], np_audio[1], np_audio[2], np_audio[3], rec_time]], axis=0)

        # remove audio older than 10s (save memory)
        self.all_audio = self.all_audio[(self.all_audio[:,4] > trim_time)]

        # allign audio track with sst ID
        for track_i, audio in enumerate(np_audio):
            track = int(track_i)
        
            if np.any(audio): # audio (non zeroes)

                # sst id is already linked to a track (skip)
                if self.sst_sss_channel_link[track] is not None:
                    continue
                   
                # sst id needs to be linked to a track
                else:
                    # find which ID is not in sst_sss_channel_link
                    new_id = []
                    channel_link_values = list(self.sst_sss_channel_link.values())
                    for source in sst_data.sources:
                        if not source.id in channel_link_values:
                            new_id.append(source.id)

                    if len(new_id) > 1:
                        rospy.logwarn("sst to sss channel linking - multi channel error")
                        continue

                    if len(new_id) == 0:
                        rospy.logwarn(f"sst to sss channel linking - no channel error - {new_id} vs. {list(self.sst_sss_channel_link.values())}")
                        continue

                    self.sst_sss_channel_link[track]= new_id[0]
            
            else: # no audio (all zeroes)
                # sst has disapeared
                if self.sst_sss_channel_link[track] is not None:
                    self.sst_sss_channel_link[track] = None

    def get_graded_frontiers(self, req):
        """
        Returns two lists. A list of marker id in descending order of best grade.
        A list of poses of the markers associated with the id list.

        Waits until the graded frontiers are newer than the request.

        """
        time_n = rospy.Time.now()
        
        if not self.discrete: 

            # hold until all grids are newer than the request time
            while time_n > self.graded_time:
                continue     

        else:
            odas_trigger = TriggerRequest()
            # turn on odas
            on = self.odas_on(odas_trigger)

            time_l = rospy.Time.now()

            stopwatch = time_l-time_n

            # run odas for discrete_wait time or until a measurement has been taken
            while stopwatch.to_sec() < self.discrete_wait and self.graded_time < time_n:
                time_l = rospy.Time.now()

                stopwatch = time_l-time_n   

            # turn off odas
            off = self.odas_off(odas_trigger)
            # perform ssc and grading
            #self.ssc_goal_selection()
            # run checks for success
            if self.graded_time < time_n:
                # TODO currently setup as failure mode
                #   change to repeat structure if issues 
                #   occur during testing
                rospy.logerr("SSC did not detect a viable SST source in the time alloted")
                return GetGradedResponse(ids= [], points= [])

        time_l = rospy.Time.now()

        stopwatch = time_l-time_n

        rospy.loginfo(f"CRYSTAL GRADING: waited for {stopwatch.to_sec():.2f} s for up to date measurements.")

        return GetGradedResponse(ids= self.id_list, points= self.point_list)
    
    def frontier_callback(self, crystalArray):
        self.frontier_markers = crystalArray

    def average_targets(self, uv_list):
        averaged_goal = OdasSst()

        uv_len = len(uv_list)

        x_sum = 0
        y_sum = 0
        z_sum = 0
        a_sum = 0

        for target in uv_list:
            x_sum = x_sum + target.x
            y_sum = y_sum + target.y
            z_sum = z_sum + target.z
            a_sum = a_sum + target.activity

        averaged_goal.x = x_sum / uv_len
        averaged_goal.y = y_sum / uv_len
        averaged_goal.z = z_sum / uv_len
        averaged_goal.activity = a_sum / uv_len
        

        return averaged_goal
    
    def ssc_goal_selection(self):
        # make deepcopies of the current audio and the current channel guide
        all_audio = deepcopy(self.all_audio)
        channel_dict = deepcopy(self.sst_sss_channel_link)

        rec_time = rospy.get_time() # float seconds
        trim_time = rec_time - self.ssc_window

        all_channel_ssc_results = []

        # perform ssc on each channel that isn't None (is currently being tracked)
        for channel in channel_dict:
            if channel_dict[channel] is not None:
                # get the ID associated with the audio channel
                sst_id = channel_dict[channel]

                # get the audio associted with the channel (last self.ssc_window seconds)
                sst_channel_audio = all_audio[:,[channel, 4]]
                
                sst_audio_trimmed = sst_channel_audio[(sst_channel_audio[:,1] > trim_time)]

                if not len(sst_audio_trimmed) > 0: # for debug purposes (breakpoints and real time don't mix)
                    continue

                # prep audio for classififcation
                sst_trimmed_stacked = np.concatenate(sst_audio_trimmed[:, 0], axis=0)

                # convert to correct type for MediaPipe
                media_pipe_data = self.AudioData.create_from_array((sst_trimmed_stacked), 16000)

                # send through classifier
                media_pipe_result = self.classifier.classify(media_pipe_data)

                # strip categories from result
                category_result = media_pipe_result[0].classifications[0].categories

                for c in category_result:
                    # filter for class and minimum score
                    if c.category_name in self.source_classes and c.score > self.ssc_threshold:
                        all_channel_ssc_results.append([sst_id, c.category_name, c.score])
        
        # check if empty (no tracked sources)
        if all_channel_ssc_results:
            # of the channels passed through ssc, find the best 
            best = [None, None, -1.0] # ID, class, score
            # get ssc with highest score
            for ssc in all_channel_ssc_results:
                if ssc[2] > best[2]:
                    best = ssc

            for sst in self.sst_uv:
                if sst.id == best[0]:
                    # write to log if the ID of the SST changes
                    if best[0] != self.sst_prev:
                        self.sst_prev = best[0]
                        self.sst_switch = self.sst_switch + 1
                        rospy.loginfo(f"USAGE STAT: sst ID switched: {self.sst_switch}")

                    self.grade_frontiers(sst, best[0], best[2], best[1])
        # if cant track anything update our recommendation


    # def ssc_goal_selection_2(self):
    
    #     """
    #     Uses MediaPipe audio classification to choose the sst with the highest chance of being a human voice.

    #     Alligns the SSS AudioFrames with the current SST unit-vectors using the current odas_synced_data channel
    #     dictionary.

    #     Takes the current SST UV's and send the UV associated with the highest scoring ID to grade the current frontiers.
    #     """
    #     # create a deep copy of odas_synced_data so it is thread safe
    #     odas_synced_data = copy(self.odas_synced_data)

    #     highest_scoring = (0, None, None) # score, key, category
    #     window_time = rospy.get_time() - self.ssc_window

    #     for sst_key_id in odas_synced_data: # key: [[AudioFrames, sst unit vectors, time], ...]
    #         key_data = odas_synced_data[sst_key_id]
            
    #         # take last window_time seconds of each sst source
    #         window_data = key_data[(key_data[:,2] > window_time)]

    #         if not len(window_data) > 0:
    #             continue # no data for this ID within the past window_time seconds, skip ID

    #         # strip audio data
    #         window_audio = np.concatenate(window_data[:, 0], axis=0)

    #         # prep audio
    #         audio_data = self.AudioData.create_from_array((window_audio), 16000)

    #         # push through classifier
    #         result = self.classifier.classify(audio_data)

    #         # strip categories from result
    #         category_result = result[0].classifications[0].categories

    #         highest_category = (0, None) # score, category

    #         for c in category_result:
    #             if c.category_name in self.source_classes and c.score > highest_category[0]:
    #                 highest_category = (c.score, c.category_name)

    #         # check for best ssc score
    #         if highest_category[0] > highest_scoring[0]:
    #             highest_scoring = (highest_category[0], sst_key_id, highest_category[1])
            
    #     if highest_scoring[1]:
    #         if highest_scoring[0] > 0.1: # TODO make threshold a ros param
    #             # average all sst's for highest_scoring ID/Key
    #             best_data = odas_synced_data[highest_scoring[1]]
                    
    #             # take last window_time seconds of best sst source
    #             best_sst_data = best_data[(best_data[:,2] > window_time)]

    #             goal = best_sst_data[0, 1] #self.average_targets(best_sst_data[:, 1])

    #             # grade the frontiers based on highest ssc score
    #             self.grade_frontiers(goal, highest_scoring[1], highest_scoring[0], highest_scoring[2])
    #         else:
    #             pass
    #             #rospy.loginfo("highest SSC score is below threshold of 0.10")

    #     else:
    #         rospy.loginfo_once("SSC hasn't run yet.")

    def grade_frontiers(self, goal:OdasSst, id, score, category):
        """
        Grade the current frontiers given an SST and some additional info for display purposes.
        """

        graded_array = MarkerArray()
        graded_tuples = []

        
        
        if(not len(self.frontier_markers.markers)):
            rospy.loginfo_once("No frontiers to grade...")
            self.point_list = []

            self.graded_frontiers = MarkerArray()
            self.graded_time = rospy.Time.now()

        else:
            # add current best ssc to history
            self.ssc_median_history.append([goal.x, goal.y, goal.z, rospy.get_time()])

            median_np = np.array(self.ssc_median_history)

            # get last x seconds of data only
            window = rospy.get_time() - self.ssc_median_window
            
            median_np = median_np[(median_np[:,3] > window)]

            # take median of history
            med_goal_x = np.median(median_np[:, 0])
            med_goal_y = np.median(median_np[:, 1])
            med_goal_z = np.median(median_np[:, 2])

            transform = self.tf_buffer.lookup_transform(self.sensor, self.world, rospy.Duration(0))
            
            for marker in self.frontier_markers.markers:
                # convert to poseStamped so we can use tf2
                stamped_frontier = PoseStamped()
                stamped_frontier.pose = marker.pose

                # transform pose into sensor frame
                stamped_frontier = tf2_geometry_msgs.do_transform_pose(stamped_frontier, transform)

                # convert to unit vector
                frontier_uv = uv_calc(stamped_frontier.pose.position)

                # calculate dot product in xy
                frontier_dp = np.dot([frontier_uv[0], frontier_uv[1]], [med_goal_x, med_goal_y])

                # tuple for service call
                graded_tuples.append([frontier_dp, marker.id, marker.pose.position])

                # dp of 2 unit vectors gives a range between -1 and 1 (apply rgb gradient)
                frontier_rgb = rgb_map(-1, 1, frontier_dp)

                # add to graded marker array
                graded = Marker()
                graded.header.frame_id = marker.header.frame_id
                graded.ns = 'graded_frontiers'
                graded.id = marker.id
                graded.lifetime = rospy.Duration(5)
                graded.type = graded.SPHERE
                graded.action = graded.ADD
                graded.scale.x = marker.scale.x
                graded.scale.y = marker.scale.y
                graded.scale.z = marker.scale.z
                graded.color.r = frontier_rgb[0]
                graded.color.g = frontier_rgb[1]
                graded.color.b = frontier_rgb[2]
                graded.color.a = 0.9
                graded.pose = marker.pose

                graded_array.markers.append(graded)
            
            # display the source/goal uv (hijacking graded_array to save memory)
            source_uv = Marker()
            source_uv.header.frame_id = self.sensor
            source_uv.action = graded.ADD
            source_uv.ns = 'goal_uv'
            source_uv.id = 0 # 0 is uv, 1 is class name
            source_uv.lifetime = rospy.Duration(1.0)
            source_uv.type = source_uv.ARROW
            source_uv.points = [Point(), Point(x=med_goal_x, y=med_goal_y, z=med_goal_z)]
            source_uv.color.r = 0.890
            source_uv.color.g = 0.283
            source_uv.color.b = 0.080
            source_uv.color.a = 0.6
            source_uv.scale.x = 0.03
            source_uv.scale.y = 0.06

            graded_array.markers.append(source_uv)

            # display the source/goal score and ID

            source_score = Marker()
            source_score.header.frame_id = self.sensor
            source_score.action = marker.ADD
            source_score.ns = 'goal_txt'
            source_score.id = 1 # 0 is uv, 1 is class name
            source_score.lifetime = rospy.Duration(1.0)
            source_score.type = Marker.TEXT_VIEW_FACING
            source_score.scale.x = 0.05
            source_score.scale.y = 0.05
            source_score.scale.z = 0.05
            source_score.color.a = 1
            source_score.color.r = 1
            source_score.color.g = 1
            source_score.color.b = 1
            source_score.pose.orientation.w = 0
            source_score.pose.orientation.x = 0
            source_score.pose.orientation.y = 0
            source_score.pose.orientation.z = 0
            source_score.pose.position.x = med_goal_x
            source_score.pose.position.y = med_goal_y
            source_score.pose.position.z = med_goal_z
            source_score.text = f"{id}:{category}:{score:.2f}"

            graded_array.markers.append(source_score)

            # sort graded tuples by their dp
            graded_tuples.sort(key=lambda tup: tup[0], reverse=True)
            zip_tup = np.array(graded_tuples)

            self.id_list = zip_tup[:,1]
            self.point_list = zip_tup[:,2]

            self.graded_frontiers = graded_array
            self.graded_time = rospy.Time.now()

def get_sst_data(id, sst_data):
    for sst in sst_data:
        if sst.id == id:
            return sst_data[0]

def uv_calc(position):
    mag = math.sqrt(pow(position.x, 2) + pow(position.y, 2) + pow(position.z, 2))
    x = position.x/mag
    y = position.y/mag
    z = position.z/mag

    return [x, y, z]

def normalize(val, min=0, max=255):
    
    normed = (val-min)/(max+min)

    return normed

def rgb_map(minimum, maximum, dp):
    minimum, maximum = float(minimum), float(maximum)
    ratio = 2 * (dp-minimum) / (maximum - minimum)
    b = int(max(0, 255*(1 - ratio)))
    r = int(max(0, 255*(ratio - 1)))
    g = 255 - b - r
    
    # range each value between 0-1 for ros
    return normalize(r), normalize(g), normalize(b)


def paramDict():
    # add all param getting/setting here
    param_dict = {}
    
    # pub and sub related entries
    param_dict["crystal_sub"] = rospy.get_param("~crystal_sub", "/crystal_cells_vis_array") # topic for array of centroids from octomap
    param_dict["sst_sub"] = rospy.get_param("~sst_sub", "/odas_sst_stamped") # topic for array of sound directions from odas
    param_dict["sss_sub"] = rospy.get_param("~sss_sub", "/odas_sss_stamped") # topic for seperated sound sources based off sst
    param_dict["graded_pub"] = rospy.get_param("~graded_pub", "/best_frontier") # topic the graded frontier array will be published under
    param_dict["grading_srv"] = rospy.get_param("~graded_srv", "/spot/global_grid/grade_frontiers", )

    # grading style 
    param_dict["discrete"] = rospy.get_param("~discrete", False) # does the grading happen in discrete time (turning odas on/off) or is it a continuous measurement?
    param_dict["discrete_wait"] = rospy.get_param("~discrete_wait", 60.0) # maximum time in seconds the discrete method will wait

    # rates
    param_dict["ssc_window"] = rospy.get_param("~ssc_window", "4.0") # length of audio (seconds) sent to classifier (can't be longer than 10s)
    param_dict["ssc_rate"] = rospy.get_param("~ssc_rate", "1") # rate (hz) that audio is sent to the classifier
    param_dict["ssc_threshold"] = rospy.get_param("~ssc_threshold", "0.2") # lowest classification score considered by MediaPipe

    # reference frames for tf2 conversion
    param_dict["world_frame"] = rospy.get_param("~world_frame", "odom")
    param_dict["sensor_frame"] = rospy.get_param("~sensor_frame", "body")

    return param_dict

if __name__ == '__main__':
    
    rospy.init_node('crystal_grading')
    grade = grade_crystal(paramDict())

    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("Grader shutting down")