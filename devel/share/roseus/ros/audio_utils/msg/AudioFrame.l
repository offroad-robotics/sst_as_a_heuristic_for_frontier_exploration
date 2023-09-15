;; Auto-generated. Do not edit!


(when (boundp 'audio_utils::AudioFrame)
  (if (not (find-package "AUDIO_UTILS"))
    (make-package "AUDIO_UTILS"))
  (shadow 'AudioFrame (find-package "AUDIO_UTILS")))
(unless (find-package "AUDIO_UTILS::AUDIOFRAME")
  (make-package "AUDIO_UTILS::AUDIOFRAME"))

(in-package "ROS")
;;//! \htmlinclude AudioFrame.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass audio_utils::AudioFrame
  :super ros::object
  :slots (_header _format _channel_count _sampling_frequency _frame_sample_count _data ))

(defmethod audio_utils::AudioFrame
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:format __format) "")
    ((:channel_count __channel_count) 0)
    ((:sampling_frequency __sampling_frequency) 0)
    ((:frame_sample_count __frame_sample_count) 0)
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _format (string __format))
   (setq _channel_count (round __channel_count))
   (setq _sampling_frequency (round __sampling_frequency))
   (setq _frame_sample_count (round __frame_sample_count))
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:format
   (&optional __format)
   (if __format (setq _format __format)) _format)
  (:channel_count
   (&optional __channel_count)
   (if __channel_count (setq _channel_count __channel_count)) _channel_count)
  (:sampling_frequency
   (&optional __sampling_frequency)
   (if __sampling_frequency (setq _sampling_frequency __sampling_frequency)) _sampling_frequency)
  (:frame_sample_count
   (&optional __frame_sample_count)
   (if __frame_sample_count (setq _frame_sample_count __frame_sample_count)) _frame_sample_count)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _format
    4 (length _format)
    ;; uint32 _channel_count
    4
    ;; uint32 _sampling_frequency
    4
    ;; uint32 _frame_sample_count
    4
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _format
       (write-long (length _format) s) (princ _format s)
     ;; uint32 _channel_count
       (write-long _channel_count s)
     ;; uint32 _sampling_frequency
       (write-long _sampling_frequency s)
     ;; uint32 _frame_sample_count
       (write-long _frame_sample_count s)
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _format
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _format (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _channel_count
     (setq _channel_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _sampling_frequency
     (setq _sampling_frequency (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _frame_sample_count
     (setq _frame_sample_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get audio_utils::AudioFrame :md5sum-) "06a6d85ab8a7017f22a773d370428c4a")
(setf (get audio_utils::AudioFrame :datatype-) "audio_utils/AudioFrame")
(setf (get audio_utils::AudioFrame :definition-)
      "std_msgs/Header header

# Supported formats (all formats are little endian):
# - \"signed_8\"
# - \"signed_16\"
# - \"signed_24\"
# - \"signed_padded_24\"
# - \"signed_32\"
# - \"unsigned_8\"
# - \"unsigned_16\"
# - \"unsigned_24\"
# - \"unsigned_padded_24\"
# - \"unsigned_32\"
# - \"float\"
# - \"double\"
string format
uint32 channel_count
uint32 sampling_frequency
uint32 frame_sample_count

uint8[] data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :audio_utils/AudioFrame "06a6d85ab8a7017f22a773d370428c4a")


