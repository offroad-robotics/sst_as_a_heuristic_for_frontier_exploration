;; Auto-generated. Do not edit!


(when (boundp 'spot_msgs::AprilTagState)
  (if (not (find-package "SPOT_MSGS"))
    (make-package "SPOT_MSGS"))
  (shadow 'AprilTagState (find-package "SPOT_MSGS")))
(unless (find-package "SPOT_MSGS::APRILTAGSTATE")
  (make-package "SPOT_MSGS::APRILTAGSTATE"))

(in-package "ROS")
;;//! \htmlinclude AprilTagState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass spot_msgs::AprilTagState
  :super ros::object
  :slots (_header _ids _tag_ids _names ))

(defmethod spot_msgs::AprilTagState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ids __ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:tag_ids __tag_ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _ids __ids)
   (setq _tag_ids __tag_ids)
   (setq _names __names)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:tag_ids
   (&optional __tag_ids)
   (if __tag_ids (setq _tag_ids __tag_ids)) _tag_ids)
  (:names
   (&optional __names)
   (if __names (setq _names __names)) _names)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32[] _ids
    (* 4    (length _ids)) 4
    ;; int32[] _tag_ids
    (* 4    (length _tag_ids)) 4
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32[] _ids
     (write-long (length _ids) s)
     (dotimes (i (length _ids))
       (write-long (elt _ids i) s)
       )
     ;; int32[] _tag_ids
     (write-long (length _tag_ids) s)
     (dotimes (i (length _tag_ids))
       (write-long (elt _tag_ids i) s)
       )
     ;; string[] _names
     (write-long (length _names) s)
     (dolist (elem _names)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _tag_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tag_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _tag_ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; string[] _names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get spot_msgs::AprilTagState :md5sum-) "6fcb386a7599f04b7e66974f6e2d0758")
(setf (get spot_msgs::AprilTagState :datatype-) "spot_msgs/AprilTagState")
(setf (get spot_msgs::AprilTagState :definition-)
      "Header header
int32[] ids
int32[] tag_ids
string[] names

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



(provide :spot_msgs/AprilTagState "6fcb386a7599f04b7e66974f6e2d0758")


