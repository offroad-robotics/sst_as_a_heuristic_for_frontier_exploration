;; Auto-generated. Do not edit!


(when (boundp 'spot_trajectory_planner::AddSavePoint)
  (if (not (find-package "SPOT_TRAJECTORY_PLANNER"))
    (make-package "SPOT_TRAJECTORY_PLANNER"))
  (shadow 'AddSavePoint (find-package "SPOT_TRAJECTORY_PLANNER")))
(unless (find-package "SPOT_TRAJECTORY_PLANNER::ADDSAVEPOINT")
  (make-package "SPOT_TRAJECTORY_PLANNER::ADDSAVEPOINT"))
(unless (find-package "SPOT_TRAJECTORY_PLANNER::ADDSAVEPOINTREQUEST")
  (make-package "SPOT_TRAJECTORY_PLANNER::ADDSAVEPOINTREQUEST"))
(unless (find-package "SPOT_TRAJECTORY_PLANNER::ADDSAVEPOINTRESPONSE")
  (make-package "SPOT_TRAJECTORY_PLANNER::ADDSAVEPOINTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass spot_trajectory_planner::AddSavePointRequest
  :super ros::object
  :slots (_target_pose _parent_id ))

(defmethod spot_trajectory_planner::AddSavePointRequest
  (:init
   (&key
    ((:target_pose __target_pose) (instance geometry_msgs::PoseStamped :init))
    ((:parent_id __parent_id) 0)
    )
   (send-super :init)
   (setq _target_pose __target_pose)
   (setq _parent_id (round __parent_id))
   self)
  (:target_pose
   (&rest __target_pose)
   (if (keywordp (car __target_pose))
       (send* _target_pose __target_pose)
     (progn
       (if __target_pose (setq _target_pose (car __target_pose)))
       _target_pose)))
  (:parent_id
   (&optional __parent_id)
   (if __parent_id (setq _parent_id __parent_id)) _parent_id)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _target_pose
    (send _target_pose :serialization-length)
    ;; int32 _parent_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _target_pose
       (send _target_pose :serialize s)
     ;; int32 _parent_id
       (write-long _parent_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _target_pose
     (send _target_pose :deserialize buf ptr-) (incf ptr- (send _target_pose :serialization-length))
   ;; int32 _parent_id
     (setq _parent_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass spot_trajectory_planner::AddSavePointResponse
  :super ros::object
  :slots (_success ))

(defmethod spot_trajectory_planner::AddSavePointResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass spot_trajectory_planner::AddSavePoint
  :super ros::object
  :slots ())

(setf (get spot_trajectory_planner::AddSavePoint :md5sum-) "330eafeff02cba4993b80f65eadcaaba")
(setf (get spot_trajectory_planner::AddSavePoint :datatype-) "spot_trajectory_planner/AddSavePoint")
(setf (get spot_trajectory_planner::AddSavePoint :request) spot_trajectory_planner::AddSavePointRequest)
(setf (get spot_trajectory_planner::AddSavePoint :response) spot_trajectory_planner::AddSavePointResponse)

(defmethod spot_trajectory_planner::AddSavePointRequest
  (:response () (instance spot_trajectory_planner::AddSavePointResponse :init)))

(setf (get spot_trajectory_planner::AddSavePointRequest :md5sum-) "330eafeff02cba4993b80f65eadcaaba")
(setf (get spot_trajectory_planner::AddSavePointRequest :datatype-) "spot_trajectory_planner/AddSavePointRequest")
(setf (get spot_trajectory_planner::AddSavePointRequest :definition-)
      "# request
geometry_msgs/PoseStamped target_pose
int32 parent_id


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
# response
bool success

")

(setf (get spot_trajectory_planner::AddSavePointResponse :md5sum-) "330eafeff02cba4993b80f65eadcaaba")
(setf (get spot_trajectory_planner::AddSavePointResponse :datatype-) "spot_trajectory_planner/AddSavePointResponse")
(setf (get spot_trajectory_planner::AddSavePointResponse :definition-)
      "# request
geometry_msgs/PoseStamped target_pose
int32 parent_id


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
# response
bool success

")



(provide :spot_trajectory_planner/AddSavePoint "330eafeff02cba4993b80f65eadcaaba")


