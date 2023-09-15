;; Auto-generated. Do not edit!


(when (boundp 'spot_trajectory_planner::BuildTrajectory)
  (if (not (find-package "SPOT_TRAJECTORY_PLANNER"))
    (make-package "SPOT_TRAJECTORY_PLANNER"))
  (shadow 'BuildTrajectory (find-package "SPOT_TRAJECTORY_PLANNER")))
(unless (find-package "SPOT_TRAJECTORY_PLANNER::BUILDTRAJECTORY")
  (make-package "SPOT_TRAJECTORY_PLANNER::BUILDTRAJECTORY"))
(unless (find-package "SPOT_TRAJECTORY_PLANNER::BUILDTRAJECTORYREQUEST")
  (make-package "SPOT_TRAJECTORY_PLANNER::BUILDTRAJECTORYREQUEST"))
(unless (find-package "SPOT_TRAJECTORY_PLANNER::BUILDTRAJECTORYRESPONSE")
  (make-package "SPOT_TRAJECTORY_PLANNER::BUILDTRAJECTORYRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass spot_trajectory_planner::BuildTrajectoryRequest
  :super ros::object
  :slots (_frontier_pose _cur_pose ))

(defmethod spot_trajectory_planner::BuildTrajectoryRequest
  (:init
   (&key
    ((:frontier_pose __frontier_pose) (instance geometry_msgs::PoseStamped :init))
    ((:cur_pose __cur_pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _frontier_pose __frontier_pose)
   (setq _cur_pose __cur_pose)
   self)
  (:frontier_pose
   (&rest __frontier_pose)
   (if (keywordp (car __frontier_pose))
       (send* _frontier_pose __frontier_pose)
     (progn
       (if __frontier_pose (setq _frontier_pose (car __frontier_pose)))
       _frontier_pose)))
  (:cur_pose
   (&rest __cur_pose)
   (if (keywordp (car __cur_pose))
       (send* _cur_pose __cur_pose)
     (progn
       (if __cur_pose (setq _cur_pose (car __cur_pose)))
       _cur_pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _frontier_pose
    (send _frontier_pose :serialization-length)
    ;; geometry_msgs/PoseStamped _cur_pose
    (send _cur_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _frontier_pose
       (send _frontier_pose :serialize s)
     ;; geometry_msgs/PoseStamped _cur_pose
       (send _cur_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _frontier_pose
     (send _frontier_pose :deserialize buf ptr-) (incf ptr- (send _frontier_pose :serialization-length))
   ;; geometry_msgs/PoseStamped _cur_pose
     (send _cur_pose :deserialize buf ptr-) (incf ptr- (send _cur_pose :serialization-length))
   ;;
   self)
  )

(defclass spot_trajectory_planner::BuildTrajectoryResponse
  :super ros::object
  :slots (_frontier_plan _parent_id _node_list ))

(defmethod spot_trajectory_planner::BuildTrajectoryResponse
  (:init
   (&key
    ((:frontier_plan __frontier_plan) (instance geometry_msgs::PoseArray :init))
    ((:parent_id __parent_id) 0)
    ((:node_list __node_list) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _frontier_plan __frontier_plan)
   (setq _parent_id (round __parent_id))
   (setq _node_list __node_list)
   self)
  (:frontier_plan
   (&rest __frontier_plan)
   (if (keywordp (car __frontier_plan))
       (send* _frontier_plan __frontier_plan)
     (progn
       (if __frontier_plan (setq _frontier_plan (car __frontier_plan)))
       _frontier_plan)))
  (:parent_id
   (&optional __parent_id)
   (if __parent_id (setq _parent_id __parent_id)) _parent_id)
  (:node_list
   (&optional __node_list)
   (if __node_list (setq _node_list __node_list)) _node_list)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseArray _frontier_plan
    (send _frontier_plan :serialization-length)
    ;; int32 _parent_id
    4
    ;; int32[] _node_list
    (* 4    (length _node_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseArray _frontier_plan
       (send _frontier_plan :serialize s)
     ;; int32 _parent_id
       (write-long _parent_id s)
     ;; int32[] _node_list
     (write-long (length _node_list) s)
     (dotimes (i (length _node_list))
       (write-long (elt _node_list i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseArray _frontier_plan
     (send _frontier_plan :deserialize buf ptr-) (incf ptr- (send _frontier_plan :serialization-length))
   ;; int32 _parent_id
     (setq _parent_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _node_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _node_list (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _node_list i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass spot_trajectory_planner::BuildTrajectory
  :super ros::object
  :slots ())

(setf (get spot_trajectory_planner::BuildTrajectory :md5sum-) "bc7bc67c3c2d0c9de04aea3b481ca509")
(setf (get spot_trajectory_planner::BuildTrajectory :datatype-) "spot_trajectory_planner/BuildTrajectory")
(setf (get spot_trajectory_planner::BuildTrajectory :request) spot_trajectory_planner::BuildTrajectoryRequest)
(setf (get spot_trajectory_planner::BuildTrajectory :response) spot_trajectory_planner::BuildTrajectoryResponse)

(defmethod spot_trajectory_planner::BuildTrajectoryRequest
  (:response () (instance spot_trajectory_planner::BuildTrajectoryResponse :init)))

(setf (get spot_trajectory_planner::BuildTrajectoryRequest :md5sum-) "bc7bc67c3c2d0c9de04aea3b481ca509")
(setf (get spot_trajectory_planner::BuildTrajectoryRequest :datatype-) "spot_trajectory_planner/BuildTrajectoryRequest")
(setf (get spot_trajectory_planner::BuildTrajectoryRequest :definition-)
      "# request
geometry_msgs/PoseStamped frontier_pose
geometry_msgs/PoseStamped cur_pose


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
geometry_msgs/PoseArray frontier_plan
int32 parent_id # used to identify which node is the parent of the frontier
int32[] node_list

================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

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
")

(setf (get spot_trajectory_planner::BuildTrajectoryResponse :md5sum-) "bc7bc67c3c2d0c9de04aea3b481ca509")
(setf (get spot_trajectory_planner::BuildTrajectoryResponse :datatype-) "spot_trajectory_planner/BuildTrajectoryResponse")
(setf (get spot_trajectory_planner::BuildTrajectoryResponse :definition-)
      "# request
geometry_msgs/PoseStamped frontier_pose
geometry_msgs/PoseStamped cur_pose


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
geometry_msgs/PoseArray frontier_plan
int32 parent_id # used to identify which node is the parent of the frontier
int32[] node_list

================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

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
")



(provide :spot_trajectory_planner/BuildTrajectory "bc7bc67c3c2d0c9de04aea3b481ca509")


