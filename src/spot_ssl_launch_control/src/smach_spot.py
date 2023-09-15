#!/usr/bin/env python3

import rospy
import numpy as np
import tf2_ros
import smach_ros
import actionlib
import time
import threading

from std_srvs.srv import Empty, Trigger, TriggerResponse, TriggerRequest
from std_msgs.msg import Header
from geometry_msgs.msg import Pose, PoseStamped
from smach import State, StateMachine, UserData
from spot_trajectory_planner.msg import ExecuteTrajectoryAction, ExecuteTrajectoryActionGoal, ExecuteTrajectoryGoal
from spot_trajectory_planner.srv import BuildTrajectory, BuildTrajectoryRequest, AddSavePoint, AddSavePointRequest
from spot_msgs.msg import MaplessTrajectoryAction, AprilTagState
from ssl_frontier_selection.srv import RemoveFrontier, RemoveFrontierRequest, GetGraded, GetGradedRequest, StampMap, StampMapRequest, PruneFrontiers, PruneFrontiersRequest

class ssl_state_machine:

    def __init__(self, param_dict):
        
        # frames for tf2.
        self.world = param_dict.get("world_frame")
        self.base = param_dict.get("base_frame")

        # april tag subscription
        self.april_tags = [int(param_dict.get("start_april")), int(param_dict.get("end_april"))]

        # classwide state machine variables
        self.tf2_buffer = tf2_ros.Buffer(rospy.Duration(10.0))
        self.tf2_listener = tf2_ros.TransformListener(self.tf2_buffer)
        self.act_srv = param_dict.get("act_srv_dict")

        # smach user control services
        self.start_smach = rospy.Service('/spot/smach/start', Trigger, self.start)
        self.terminate_smach = rospy.Service('/spot/smach/terminate', Trigger, self.terminate)

        # smach
        self.ssl_smach = StateMachine(outcomes=['succeeded','failed'])
        # these outcomes encapsulate this SM, so itself can be used as a state

        with self.ssl_smach:
            self.ssl_smach.add('START', start(self.act_srv, self.april_tags[0]),
                               transitions=
                               {'boot_success':'PLAN', 'boot_failure':'ERROR'},
                               remapping=
                               {'generic':'new_frontiering', 'error':'error'})
            
            self.ssl_smach.add('PLAN', plan(self.act_srv, self.base, self.world),
                               transitions=
                               {'planned':'EXECUTE', 'error':'ERROR'},
                               remapping=
                               {'new_frontiering':'new_frontiering', 'error':'error', 'plan':'plan', 'error_o':'error'})
            
            self.ssl_smach.add('EXECUTE', execute_plan(self.act_srv),
                               transitions=
                               {'trajectory_success':'UPDATE', 'trajectory_failure':'RECOVER', 'error':'ERROR'},
                               remapping=
                               {'plan':'plan', 'error':'error', 'node_id':'node_id', 'error_o':'error'})
            
            self.ssl_smach.add('UPDATE', update(self.act_srv, self.base, self.world),
                               transitions=
                               {'updated':'CHECK', 'error':'ERROR'},
                               remapping=
                               {'parent_id':'node_id', 'error':'error', 'generic':'generic','error_o':'error'})
            
            self.ssl_smach.add('CHECK', check(self.act_srv, self.april_tags[1]),
                               transitions=
                               {'found':'END', 'continue':'PLAN', 'error':'ERROR'},
                               remapping=
                               {'generic':'generic', 'error':'error', 'new_frontiers':'new_frontiering', 'error_o':'error'})
            
            self.ssl_smach.add('RECOVER', recover(self.act_srv, self.base, self.world),
                               transitions=
                               {'recover_success':'PLAN', 'error':'ERROR'},
                               remapping=
                               {'recover_node':'node_id', 'error':'error', 'new_frontier_grading':'new_frontiering', 'error_o':'error'})

            # END state does not check for final april tag, thats CHECK's job
            self.ssl_smach.add('END', end(self.act_srv),
                               transitions=
                               {'end_success':'succeeded', 'end_failed':'ERROR'},
                               remapping=
                               {'generic':'generic', 'error':'error', 'generic_o':'generic', 'error_o':'error'})
            
            self.ssl_smach.add('ERROR', error(self.act_srv), transitions=
                               {'error_f':'failed'},
                               remapping=
                               {'generic':'generic', 'error':'error'})
        
        # state machine introspective
        self.sm_is = smach_ros.IntrospectionServer('ssl_sm_root', self.ssl_smach, '/SSL_SM_ROOT')
        self.sm_is.start()

        rospy.loginfo_once("SMACH init succefull, waiting for start command")

    def start(self, request):
        # il give you two guesses as to what this function does
        # non-blocking is required so rviz doesen't freeze
        non_blocking_thread = threading.Thread(target=self.ssl_smach.execute)
        non_blocking_thread.start()
        rospy.loginfo("Start command received")
        return TriggerResponse(success= True, message= "State machine started")

    def terminate(self, request):
        # request shutdown of ssl_smach. Used in emergency scenarios
        self.ssl_smach.request_preempt()
        return TriggerResponse(success= True, message= "State machine terminated")
        

class start(State):

    def __init__(self, servers:dict, start_april):
        State.__init__(self, outcomes=['boot_success', 'boot_failure'], input_keys=[], output_keys=['generic', 'error'])

        # init of State should throw error if setup is incorrect

        # services/actions that this state checks (start state checks all)
        rospy.wait_for_service(servers['stamp_map'], timeout=1.0)
        rospy.wait_for_service(servers['remove_frontier'], timeout=1.0)
        rospy.wait_for_service(servers['prune_frontiers'], timeout=1.0)
        rospy.wait_for_service(servers['get_graded'], timeout=1.0)
        rospy.wait_for_service(servers['add_save_point'], timeout=1.0)
        rospy.wait_for_service(servers['build_trajectory'], timeout=1.0)
        rospy.wait_for_service(servers['power_off'], timeout=1.0)
        rospy.wait_for_service(servers['e_stop'], timeout=1.0)
        rospy.wait_for_service(servers['stop'], timeout=1.0)
        rospy.wait_for_service(servers['release_lease'], timeout=1.0)
        rospy.wait_for_service(servers['sit'], timeout=1.0)

        #actions
        exe_traj = actionlib.SimpleActionClient(servers['execute_trajectory'], ExecuteTrajectoryAction)
        exe_traj.wait_for_server(timeout=rospy.Duration(1.0))
        mapless_traj = actionlib.SimpleActionClient('/spot/mapless_trajectory', MaplessTrajectoryAction)
        mapless_traj.wait_for_server(timeout=rospy.Duration(1.0))

        # services/actions that this state uses
        rospy.wait_for_service(servers['claim_lease'], timeout=1.0)
        self.claim_lease = rospy.ServiceProxy(servers['claim_lease'], Trigger)
        rospy.loginfo("START: succesfully connected to claim_lease service")

        rospy.wait_for_service(servers['power_on'], timeout=1.0)
        self.power_on = rospy.ServiceProxy(servers['power_on'], Trigger)
        rospy.loginfo("START: succesfully connected to power_on service")

        rospy.wait_for_service(servers['stand'], timeout=1.0)
        self.stand = rospy.ServiceProxy(servers['stand'], Trigger)
        rospy.loginfo("START: succesfully connected to stand service")
        # direct access was used instead of ".get()" so error is thrown if key doesent exist

        # get access to start april tag topic/data
        self.start_april = start_april
        self.april_viz = False
        self.start_april_sub = rospy.Subscriber(servers['april_topic'], AprilTagState, self.check_april, queue_size=1)

    def execute(self, ud):
        ud.generic = True
        rospy.loginfo("START: smach activated")
        rospy.loginfo(f"USAGE STAT: start time {rospy.get_time()}")
        while(not self.april_viz):
            rospy.loginfo_once("START: waiting for starting april tag...")
            continue

        rospy.loginfo("START: begining startup")

        empty_trigger = TriggerRequest()

        # claim lease
        claimed = self.claim_lease(empty_trigger)
        if claimed.success:
            rospy.loginfo("START: control lease claimed")
        else:
            ud.error = claimed.message
            return 'boot_failure'
        
        # power on
        powered = self.power_on(empty_trigger)
        if powered.success:
            rospy.loginfo("START: motors powered up")
        else:
            ud.error = powered.message
            return 'boot_failure'

        # stand up
        standing = self.stand(empty_trigger)
        if standing.success:
            rospy.loginfo("START: robot is standing")
        else:
            ud.error = standing.message
            return 'boot_failure'
        
        return 'boot_success'

    def check_april(self, april_tags):
        if self.start_april in april_tags.tag_ids:
            self.april_viz = True
        else:
            self.april_viz = False

class recover(State):

    def __init__(self, servers:dict, base_frame, world_frame):
        State.__init__(self, outcomes=['recover_success', 'error'], input_keys=['recover_node', 'error'], output_keys=['new_frontier_grading','error_o'])

        # connect to execute trajectory action server
        self.execute_trajectory_server = actionlib.SimpleActionClient(servers['execute_trajectory'], ExecuteTrajectoryAction)
        self.execute_trajectory_server.wait_for_server(timeout=rospy.Duration(1.0))
        rospy.loginfo("RECOVER: succesfully connected to execute_trajector action")

        rospy.wait_for_service(servers['build_trajectory'], timeout=1.0)
        self.build_trajectory = rospy.ServiceProxy(servers['build_trajectory'], BuildTrajectory)
        rospy.loginfo("RECOVER: succesfully connected to build_trajectory service")

        # tf2 listener for current position
        self.tf_buffer = tf2_ros.Buffer(rospy.Duration(10.0))  # tf buffer length
        self.tf_listener = tf2_ros.TransformListener(self.tf_buffer)
        self.base_frame = base_frame
        self.world_frame = world_frame

    def execute(self, ud):
        ud.new_frontier_grading = None
        ud.error_o = None

        if self.preempt_requested():
            ud.error_o = 'Preemted!'
            self.service_preempt()
            return 'error'

        try:
            ud.new_frontier_grading = False

            # build trajectory from current position to recovery node
            trajectory_request = BuildTrajectoryRequest()

            request_header = Header(stamp=rospy.Time.now(), frame_id=self.world_frame)

            # NOTE
            n_pose = Pose()
            n_pose = ud.recover_node # recovery node that spot will travel to
            rospy.loginfo(f"RECOVER: trying to get back to {ud.recover_node}")
            safe_node_pose = PoseStamped(header=request_header, pose=n_pose)
            
            current_loc = self.tf_buffer.lookup_transform(self.world_frame, self.base_frame, rospy.Duration(0))

            s_pose = Pose()
            s_pose.position = current_loc.transform.translation
            s_pose.orientation = current_loc.transform.rotation
            current_pose = PoseStamped(header= request_header, pose=s_pose)

            trajectory_request.frontier_pose = safe_node_pose
            trajectory_request.cur_pose = current_pose

            # build trajectory plan
            trajectory_plan = self.build_trajectory(trajectory_request)

            # execute recovery plan to return to safe node
            execute_request = ExecuteTrajectoryGoal()

            execute_request.frontier_plan = trajectory_plan.frontier_plan
            execute_request.parent_id = trajectory_plan.parent_id
            execute_request.add_frontier = False
            
            self.execute_trajectory_server.send_goal(execute_request, feedback_cb=self.log_feedback)
            rospy.loginfo("RECOVER: trajectory goal submitted to trajectory action server")
            self.execute_trajectory_server.wait_for_result()
            result = self.execute_trajectory_server.get_result()

            if result.result:
                rospy.loginfo("RECOVER: recovery trajectory succesful")
                return 'recover_success'
            
            else:
                rospy.loginfo("RECOVER: recovery trajectory failure")
                ud.error_o = "RECOVER: failed to return to 'safe' node"
                return 'error'

        except Exception as e:
            ud.error_o = str(e)
            return 'error'

    def log_feedback(self, feedback):
        feedback = f"EXECUTE: action feedback - {feedback.feedback}"
        rospy.loginfo_throttle(5.0, feedback)
        
class execute_plan(State):

    def __init__(self, servers:dict):
        State.__init__(self, outcomes=['trajectory_success', 'trajectory_failure', 'error'], input_keys=['plan', 'error'], output_keys=['node_id', 'error_o'])

        # connect to execute trajectory action server
        self.execute_trajectory_server = actionlib.SimpleActionClient(servers['execute_trajectory'], ExecuteTrajectoryAction)
        self.execute_trajectory_server.wait_for_server(timeout=rospy.Duration(1.0))
        rospy.loginfo("EXECUTE: succesfully connected to execute_trajectory action")
       
    def execute(self, ud):
        ud.error_o = None
        ud.node_id = None

        if self.preempt_requested():
            ud.error_o = 'Preemted!'
            self.service_preempt()
            return 'error'

        try:
            # execute trajectory action
            execute_request = ExecuteTrajectoryGoal()

            execute_request.frontier_plan = ud.plan.frontier_plan
            execute_request.parent_id = ud.plan.parent_id
            execute_request.add_frontier = True
            
            self.execute_trajectory_server.send_goal(execute_request, feedback_cb=self.log_feedback)
            rospy.loginfo("EXECUTE: trajectory goal submitted to trajectory action server")
            self.execute_trajectory_server.wait_for_result()
            result = self.execute_trajectory_server.get_result()

            if result.result:
                rospy.loginfo("EXECUTE: trajectory goal succesful")
                return 'trajectory_success'
            
            else:
                rospy.loginfo("EXECUTE: trajectory goal failed")
                # return to last succesful node (closest to robots current position)
                ud.node_id = result.last_success
                return 'trajectory_failure'
            
        except Exception as e:
            ud.error_o = str(e)
            return 'error'

    def log_feedback(self, feedback):
        feedback = f"EXECUTE: action feedback - {feedback.feedback}"
        rospy.loginfo_throttle(5.0, feedback)


class update(State):

    def __init__(self, servers:dict, base_frame, world_frame):
        State.__init__(self, outcomes=['updated', 'error'], input_keys=['parent_id', 'error'], output_keys=['generic','error_o'])
        
        # services/actions that this state uses
        rospy.wait_for_service(servers['stamp_map'], timeout=1.0)
        self.stamp_map = rospy.ServiceProxy(servers['stamp_map'], StampMap)
        rospy.loginfo("UPDATE: succesfully connected to stamp_map service")

        rospy.wait_for_service(servers['remove_frontier'], timeout=1.0)
        self.remove_frontier = rospy.ServiceProxy(servers['remove_frontier'], RemoveFrontier)
        rospy.loginfo("UPDATE: succesfully connected to remove_frontier service")

        rospy.wait_for_service(servers['prune_frontiers'], timeout=1.0)
        self.prune_frontiers = rospy.ServiceProxy(servers['prune_frontiers'], PruneFrontiers)
        rospy.loginfo("UPDATE: succesfully connected to prune_frontiers service")

        rospy.wait_for_service(servers['add_save_point'], timeout=1.0)
        self.add_save_point = rospy.ServiceProxy(servers['add_save_point'], AddSavePoint)
        rospy.loginfo("UPDATE: succesfully connected to add_save_point service")

        # tf2 listener for current position
        self.tf_buffer = tf2_ros.Buffer(rospy.Duration(10.0))  # tf buffer length
        self.tf_listener = tf2_ros.TransformListener(self.tf_buffer)
        self.base_frame = base_frame
        self.world_frame = world_frame

    def execute(self, ud):
        ud.error_o = None

        if self.preempt_requested():
            ud.error_o = 'Preemted!'
            self.service_preempt()
            return 'error'

        try:
            # # add save point to node graph at current position
            # (s_trans, s_rot) = self.tf_buffer.lookup_transform(self.world_frame, self.base_frame, rospy.Duration(0))
            # request_header = Header(stamp=rospy.Time.now(), frame_id=self.world_frame)
            
            # 'safe' points are added by the trajectory server
            # # parent of new node to connect to graph
            # # TODO parent_id replaced remove_id which was originally intended for frontier removal.
            # # TODO it is currently assumed that the prune_frontiers request will clear the travelled to frontier
            # # TODO this means remove_frontier request is never used

            # t_pose = Pose()
            # t_pose.position = s_trans
            # t_pose.orientation = s_rot
            # current_pose = PoseStamped(header= request_header, pose=t_pose)
            
            # add_sp_request = AddSavePointRequest()
            # add_sp_request.parent_id = ud.parent_id
            # add_sp_request.target_pose = current_pose
            # add_sp = self.add_save_point(add_sp_request)

            # if not add_sp.success:
            #     ud.error_o = "UPDATE: could not add 'safe' point to node graph."
            #     return 'error'
            
            # rospy.loginfo("UPDATE: new 'safe' point added to node graph")

            # stamp local occupancy map to global map
            stamp_local_request = StampMapRequest()
            stamp_local = self.stamp_map(stamp_local_request)

            if not stamp_local.success:
                ud.error_o = "UPDATE: could not stamp local occupancy grid on to global map."
                return 'error'
            
            rospy.loginfo("UPDATE: local occupancy grid stamped on to global map")

            # prune excess frontiers from global map
            prune_request = PruneFrontiersRequest()
            prune = self.prune_frontiers(prune_request)
            log_prune = f"UPDATE: pruned {prune.pruned} frontiers from global occupancy map"
            rospy.loginfo(log_prune)
            
            # update step successful, transition to check step
            return 'updated'

        except Exception as e:
            ud.error_o = str(e)
            return 'error'
    
class plan(State):

    def __init__(self, servers:dict, base_frame, world_frame):
        State.__init__(self, outcomes=['planned', 'error'], input_keys=['new_frontiering', 'error'], output_keys=['plan', 'error_o'])

        # services/actions that this state uses
        rospy.wait_for_service(servers['remove_frontier'], timeout=1.0)
        self.remove_frontier = rospy.ServiceProxy(servers['remove_frontier'], RemoveFrontier)
        rospy.loginfo("PLAN: succesfully connected to remove_frontier service")

        rospy.wait_for_service(servers['get_graded'], timeout=1.0)
        self.get_graded = rospy.ServiceProxy(servers['get_graded'], GetGraded)
        rospy.loginfo("PLAN: succesfully connected to get_graded service")

        rospy.wait_for_service(servers['build_trajectory'], timeout=1.0)
        self.build_trajectory = rospy.ServiceProxy(servers['build_trajectory'], BuildTrajectory)
        rospy.loginfo("PLAN: succesfully connected to build_trajectory service")

        # tf2 listener for current position
        self.tf_buffer = tf2_ros.Buffer(rospy.Duration(10.0))  # tf buffer length
        self.tf_listener = tf2_ros.TransformListener(self.tf_buffer)
        self.base_frame = base_frame
        self.world_frame = world_frame

        self.current_frontier_grades = None

        self.failed_traj = 0
        self.retrace = 0

    def execute(self, ud):
        ud.plan = None
        ud.error_o = None

        if self.preempt_requested():
            ud.error_o = 'Preemted!'
            self.service_preempt()
            return 'error'

        plan_possible = False

        try:
            if ud.new_frontiering:
                # trajectory plan has executed succesfully (or this is the first attempt)
                rospy.loginfo("PLAN: grading frontiers")
                graded = self.get_graded(GetGradedRequest())
                self.current_frontier_grades = np.array([graded.ids, graded.points])
                if len(self.current_frontier_grades[0]) < 1:
                    ud.error_o = "PLAN: no frontiers returned when get_graded called"
                    return 'error'

            elif not ud.new_frontiering: 
                # trajectory plan has failed and is returning from a recovery state. Remove highest graded frontiers
                self.failed_traj = self.failed_traj + 1
                rospy.loginfo("PLAN: using previously graded frontiers")
                rospy.loginfo(f"USAGE STAT: frontier trajectory failed: {self.failed_traj}")
                self.current_frontier_grades = np.delete(self.current_frontier_grades, 0, 1)
                if len(self.current_frontier_grades[0]) < 1:
                    ud.error_o = "PLAN: all frontier exausted, current_frontier_grades empty"
                    return 'error'
                
            else:
                ud.error_o = "PLAN: new_frontiering not set"
                return 'error'
            
            while not plan_possible:

                if self.preempt_requested():
                    ud.error_o = 'Preemted!'
                    self.service_preempt()
                    return 'error'
                
                # current_frontier_grades adjusted, build trajectory plan
                trajectory_request = BuildTrajectoryRequest()

                request_header = Header(stamp=rospy.Time.now(), frame_id=self.world_frame)

                f_pose = Pose()
                f_pose.position = self.current_frontier_grades[1,0] # position of current best frontier
                f_pose.orientation.w = 1.0
                frontier_pose = PoseStamped(header=request_header, pose=f_pose)
                
                current_loc = self.tf_buffer.lookup_transform(self.world_frame, self.base_frame, rospy.Duration(0))

                s_pose = Pose()
                s_pose.position = current_loc.transform.translation
                s_pose.orientation = current_loc.transform.rotation
                current_pose = PoseStamped(header= request_header, pose=s_pose)

                trajectory_request.frontier_pose = frontier_pose
                trajectory_request.cur_pose = current_pose

                # build trajectory plan
                trajectory_plan = self.build_trajectory(trajectory_request)

                if len(trajectory_plan.frontier_plan.poses) > 0:
                    plan_possible = True
                    rospy.loginfo(f"PLAN: trajectory plan nodes: {trajectory_plan.node_list}")

                    # log if spot had to retrace its steps
                    if trajectory_plan.parent_id == trajectory_plan.node_list[0] and len(trajectory_plan.node_list) == 1:
                        self.retrace = self.retrace + 1
                        rospy.loginfo(f"USAGE STAT: retrace - {self.retrace}")

                    # plan build succesfull, transition to execute step
                    rospy.loginfo("PLAN: trajectory plan built successfully")
                    ud.plan = trajectory_plan

                    return 'planned'
                
                else:
                    # chosen frontier or child cannot be reached from any safety nodes
                    # remove best from current grade list and repeat frontier approach plan
                    rospy.loginfo("PLAN: top rated frontier failed ray-trace, trying next best")
                    self.current_frontier_grades = np.delete(self.current_frontier_grades, 0, 1)
                    if len(self.current_frontier_grades[0]) < 1:
                        ud.error_o = "PLAN: all frontier exausted, current_frontier_grades empty"
                        return 'error'
            
        except Exception as e:
            ud.error_o = str(e)
            rospy.logerr("PLAN: error occured while building a trajectory plan")
            return 'error'
        
class check(State):

    def __init__(self, servers:dict, end_april):
        State.__init__(self, outcomes=['found', 'continue', 'error'], input_keys=['generic','error'], output_keys=['new_frontiers', 'error_o'])

        # get access to end april tag topic/data
        self.end_april = end_april
        self.april_viz = False
        self.end_april_sub = rospy.Subscriber(servers['april_topic'], AprilTagState, self.check_april, queue_size=1)
        rospy.loginfo("CHECK: successfully connected to april tag topic")
        

    def execute(self, ud):
        ud.new_frontiers = None
        ud.error_o = None

        if self.preempt_requested():
            ud.error_o = 'Preemted!'
            self.service_preempt()
            return 'error'

        try:
            if self.april_viz:
                # target has been found, move to end state
                rospy.loginfo("CHECK: end april tag has been found")
                ud.new_frontiers = False
                return 'found'
            else:
                rospy.loginfo("CHECK: end april tag is not visible")
                ud.new_frontiers = True
                return 'continue'

        except Exception as e:
            ud.error_o = str(e)
            rospy.logerr("CHECK: error occured while looking for ending april tag.")
            return 'error'

    def check_april(self, april_tags):
        if self.end_april in april_tags.tag_ids:
            self.april_viz = True
        else:
            self.april_viz = False
        
class end(State):

    def __init__(self, servers:dict):
        State.__init__(self, outcomes=['end_success', 'end_failed'], input_keys=['generic', 'error'], output_keys=['generic_o', 'error_o'])
        # services/actions that this state uses
        rospy.wait_for_service(servers['release_lease'], timeout=1.0)
        self.release_lease = rospy.ServiceProxy(servers['release_lease'], Trigger)
        rospy.loginfo("END: succesfully connected to release_lease service")

        rospy.wait_for_service(servers['power_off'], timeout=1.0)
        self.power_off = rospy.ServiceProxy(servers['power_off'], Trigger)
        rospy.loginfo("END: succesfully connected to power_off service")

        rospy.wait_for_service(servers['sit'], timeout=1.0)
        self.sit = rospy.ServiceProxy(servers['sit'], Trigger)
        rospy.loginfo("END: succesfully connected to sit service")

    def execute(self, ud):
        ud.generic_o = None
        ud.error_o = None
        empty_trigger = TriggerRequest()

        rospy.loginfo(f"USAGE STAT: end time {rospy.get_time()}")

        #TODO temporary wait
        time.sleep(5)

        # sit spot back down
        sitting = self.sit(empty_trigger)
        time.sleep(5) # TODO DO NOT REMOVE, ROBOT NEEDS TIME TO SIT BEFORE MOTORS ARE SHUT OFF
                      # TODO REPLACE WITH MORE ROBUST CHECK FOR IF SPOT IS SITTING
        if sitting.success:
            rospy.loginfo("END: robot is sitting")

            # the robot should sit before it is powered off
            off = self.power_off(empty_trigger)
            if off.success:
                rospy.loginfo("END: motors powered down")

                release = self.release_lease(empty_trigger)
                if release.success:
                    rospy.loginfo("END: lease has been revoked")
                    return 'end_success'

                else:
                    rospy.loginfo("END: end state achieved, but lease revoke failed")
                    ud.error_o = "END: end state achieved, but lease revoke failed"
                    return 'end_failed'

            else:
                rospy.loginfo("END: end state achieved, but power off failed")
                ud.error_o = "END: end state achieved, but power off failed"
                return 'end_failed'

        else:
            rospy.loginfo("END: end state achieved, but sit command failed")
            ud.error_o = "END: end state achieved, but sit command failed"
            return 'end_failed'
            
class error(State):

    def __init__(self, servers:dict):
        State.__init__(self, outcomes=['error_f'], input_keys=['generic','error'], output_keys=[])
        # check that all service/action servers can be accessed
        rospy.wait_for_service(servers['e_stop'], timeout=1.0)
        self.e_stop = rospy.ServiceProxy(servers['e_stop'], Trigger)
        rospy.loginfo("ERROR: succesfully connected to e_stop service")

        rospy.wait_for_service(servers['stop'], timeout=1.0)
        self.stop = rospy.ServiceProxy(servers['stop'], Trigger)
        rospy.loginfo("ERROR: succesfully connected to stop service")

    def execute(self, ud):
        # error will only pull gentle e-stop, it is up to the user to pull hard e-stop
        cause = "ERROR: error state reached: " + str(ud.error)
        empty_trigger = TriggerRequest()
        rospy.logerr(cause)

        stopping = self.stop(empty_trigger)
        time.sleep(3) # TODO DO NOT REMOVE ROBOT NEEDS TIME TO STOP BEFORE ESTOP
        if stopping.success:
            rospy.logerr("ERROR: robot has been stopped")

            e_stop = self.e_stop(empty_trigger)
            if e_stop.success:
                rospy.logerr("ERROR: e_stop pulled, e-stop release and lease renewal required")
                return 'error_f'

            else:
                rospy.logerr("ERROR: e_stop failed, but robot stopped")

        else:
            rospy.logerr("ERROR: robot failed to stop")

        rospy.logerr("ERROR: robot is rogue, pull hard e-stop")
        return 'error_f'
       
def stop_spot():
    """Stop spot where it currently stands"""
    empty_trigger = TriggerRequest()
    stop_robot = rospy.ServiceProxy("/spot/stop", Trigger)
    stop_result = stop_robot(empty_trigger)

    if stop_result.success:
        rospy.logerr("STOPPING SPOT SUCCESSFUL")  
    else:
        rospy.logerr("STOPPING SPOT FAILED - PULL E-STOP")

    return

def paramDict():
    param_dict = {}
    
    # add all param getting/setting here
    param_dict["world_frame"] = rospy.get_param("~world_frame", "odom")
    param_dict["base_frame"] = rospy.get_param("~base_frame", "base")
    param_dict["start_april"] = rospy.get_param("~start_april", "16")
    param_dict["end_april"] = rospy.get_param("~end_april", "13")
    param_dict["act_srv_dict"] = rospy.get_param("~actions_n_services", {})

    return param_dict
    


if __name__ == '__main__':
    
    rospy.init_node('spot_state_machine')
    ssl_smach = ssl_state_machine(paramDict())

    try:
        rospy.spin()
        ssl_smach.sm_is.stop()
    except KeyboardInterrupt:
        print("ssl_smach shutting down")
