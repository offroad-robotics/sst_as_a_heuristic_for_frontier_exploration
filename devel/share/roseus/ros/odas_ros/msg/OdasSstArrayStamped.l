;; Auto-generated. Do not edit!


(when (boundp 'odas_ros::OdasSstArrayStamped)
  (if (not (find-package "ODAS_ROS"))
    (make-package "ODAS_ROS"))
  (shadow 'OdasSstArrayStamped (find-package "ODAS_ROS")))
(unless (find-package "ODAS_ROS::ODASSSTARRAYSTAMPED")
  (make-package "ODAS_ROS::ODASSSTARRAYSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude OdasSstArrayStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass odas_ros::OdasSstArrayStamped
  :super ros::object
  :slots (_header _sources ))

(defmethod odas_ros::OdasSstArrayStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sources __sources) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _sources __sources)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sources
   (&rest __sources)
   (if (keywordp (car __sources))
       (send* _sources __sources)
     (progn
       (if __sources (setq _sources (car __sources)))
       _sources)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; odas_ros/OdasSst[] _sources
    (apply #'+ (send-all _sources :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; odas_ros/OdasSst[] _sources
     (write-long (length _sources) s)
     (dolist (elem _sources)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; odas_ros/OdasSst[] _sources
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sources (let (r) (dotimes (i n) (push (instance odas_ros::OdasSst :init) r)) r))
     (dolist (elem- _sources)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get odas_ros::OdasSstArrayStamped :md5sum-) "9d2c6de6487e9fc578a7b9e452e8489d")
(setf (get odas_ros::OdasSstArrayStamped :datatype-) "odas_ros/OdasSstArrayStamped")
(setf (get odas_ros::OdasSstArrayStamped :definition-)
      "Header header
odas_ros/OdasSst[] sources

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

================================================================================
MSG: odas_ros/OdasSst
int64 id
float64 x
float64 y
float64 z
float64 activity

")



(provide :odas_ros/OdasSstArrayStamped "9d2c6de6487e9fc578a7b9e452e8489d")


