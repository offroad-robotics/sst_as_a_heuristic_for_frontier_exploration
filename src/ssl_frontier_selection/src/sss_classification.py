#!/usr/bin/env python

import rospy
import numpy as np
import sounddevice as sd
import mediapipe as mp
import time
import csv

from mediapipe.tasks import python
from mediapipe.tasks.python import audio

from audio_utils.msg import AudioFrame
from odas_ros.msg import OdasSstArrayStamped
from audio_utils import get_format_information, convert_audio_data_to_numpy_frames, convert_numpy_frames_to_audio_data
from scipy.signal import butter, sosfilt, lfilter

# sounddevice Parameters
FRAMES_PER_BUFFER = 128
FORMAT = 'float32'
CHANNELS = 1
RATE = 16000

MODEL_PATH = '/home/spot/frontier_exploration_ssl_spot/src/ssl_frontier_selection/ssc_models/lite-model_yamnet_classification_tflite_1.tflite'

AudioClassifierResult = mp.tasks.audio.AudioClassifierResult

class denoiser:

    def __init__(self, param_dict):
        

        self.format_str = str(param_dict['format'])
        self.format = get_format_information(self.format_str)
        self.sample_rate = int(param_dict['sample_rate'])

        self.AudioClassifier = mp.tasks.audio.AudioClassifier
        self.AudioClassifierOptions = mp.tasks.audio.AudioClassifierOptions
        
        self.AudioRunningMode = mp.tasks.audio.RunningMode
        self.BaseOptions = mp.tasks.BaseOptions
        self.AudioData = mp.tasks.components.containers.AudioData

        self.options = self.AudioClassifierOptions(
            base_options=self.BaseOptions(model_asset_path=MODEL_PATH), 
            running_mode=self.AudioRunningMode.AUDIO_CLIPS, max_results=8)

        self.long_frames = []

        # all run for 3 minutes on same chapter
        # standing mushroom 10m Animal Farm DONE
        # jog mushroom 10m Animal Farm DONE
        # standing forehead 10m Animal Farm 
        # jog forehead 10m Animal Farm

        self.class_csv_file = open('/home/spot/Desktop/mushroom_verification_testing/standing_forehead_10m_af.csv', 'w', encoding='UTF8')
        self.sst_csv_file = open('/home/spot/Desktop/mushroom_verification_testing/standing_forehead_10m_af_sst.csv', 'w', encoding='UTF8')

        # create the csv writer
        self.class_csv_writer = csv.writer(self.class_csv_file)
        self.sst_csv_writer = csv.writer(self.sst_csv_file)

        # pub/sub
        self.af_sub = rospy.Subscriber("/odas/sss", AudioFrame, self.callback, queue_size=30)
        self.sst_sub = rospy.Subscriber("/odas/sst", OdasSstArrayStamped, self.sst_callback, queue_size=30)

        self.audio_storage = []

        self.classifier = self.AudioClassifier.create_from_options(self.options)

        while not rospy.is_shutdown():
            continue
        
        print("file closed")
        self.class_csv_file.close()
        self.sst_csv_file.close()
                

    def sst_callback(self, msg):
        sources = msg.sources
        
        for track in sources:
            row = f'{track.id}; {track.x}; {track.y}; {track.z};'
            self.sst_csv_writer.writerow(row.split(";"))



    def print_result(result: AudioClassifierResult, timestamp_ms: int):
        top_category = result.classifications[0].categories[0]
        result = f'Timestamp {timestamp_ms}: {top_category.category_name} ({top_category.score:.2f})'
        rospy.loginfo(result)
        # print(AudioClassifierResult result: {}’.format(result))

    def callback(self, msg):

        frames = convert_audio_data_to_numpy_frames(self.format, msg.channel_count, msg.data)

        numpy_frames = np.asarray(frames)
        numpy_frames = np.float32(numpy_frames)

        
        milis = int(time.time() * 1000)

        if len(self.long_frames) < 187: # at 16khz, every 1.5s do a classification
            self.long_frames.append(numpy_frames)
        
        else:
            long = np.concatenate(self.long_frames, axis=1)
            
            for i, channel in enumerate(long):
                
                # create the audio datat
                audio_data = self.AudioData.create_from_array((channel), self.sample_rate)

                # send it for interpritation
                result = self.classifier.classify(audio_data)

                # print the result
                top_category = result[0].classifications[0].categories
                
                row = f'{i}; {milis}; {top_category[0].category_name}; {top_category[0].score:.2f}; {top_category[1].category_name}; {top_category[1].score:.2f}; {top_category[2].category_name}; {top_category[2].score:.2f}; {top_category[3].category_name}; {top_category[3].score:.2f}; {top_category[4].category_name}; {top_category[4].score:.2f}; {top_category[5].category_name}; {top_category[5].score:.2f}; {top_category[6].category_name}; {top_category[6].score:.2f}; {top_category[7].category_name}; {top_category[7].score:.2f}'

                self.class_csv_writer.writerow(row.split(";"))

                print(row)
                
            self.long_frames.clear()


def filter_params():
    param_dict = {}

    param_dict['format'] = rospy.get_param('~audio_format', 'signed_16')
    param_dict['sub_topic'] = rospy.get_param('~sub_topic', '/odas/sss')
    param_dict['sample_rate'] = rospy.get_param('~sample_rate', '16000')

    return param_dict


def main(args):
    # create filtering node
    rospy.init_node("sss_classifier", anonymous=False)

    # Gather node paramters into dictionary
    param_dict = filter_params()

    denoise = denoiser(param_dict)

    # spin up the node
    try:
        rospy.spin()
    except ValueError as spin_error:
        print(spin_error)

if __name__ == '__main__':
    main("temp")