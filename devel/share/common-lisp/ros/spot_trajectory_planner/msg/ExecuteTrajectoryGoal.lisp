; Auto-generated. Do not edit!


(cl:in-package spot_trajectory_planner-msg)


;//! \htmlinclude ExecuteTrajectoryGoal.msg.html

(cl:defclass <ExecuteTrajectoryGoal> (roslisp-msg-protocol:ros-message)
  ((frontier_plan
    :reader frontier_plan
    :initarg :frontier_plan
    :type geometry_msgs-msg:PoseArray
    :initform (cl:make-instance 'geometry_msgs-msg:PoseArray))
   (parent_id
    :reader parent_id
    :initarg :parent_id
    :type cl:integer
    :initform 0)
   (add_frontier
    :reader add_frontier
    :initarg :add_frontier
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ExecuteTrajectoryGoal (<ExecuteTrajectoryGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecuteTrajectoryGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecuteTrajectoryGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spot_trajectory_planner-msg:<ExecuteTrajectoryGoal> is deprecated: use spot_trajectory_planner-msg:ExecuteTrajectoryGoal instead.")))

(cl:ensure-generic-function 'frontier_plan-val :lambda-list '(m))
(cl:defmethod frontier_plan-val ((m <ExecuteTrajectoryGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_trajectory_planner-msg:frontier_plan-val is deprecated.  Use spot_trajectory_planner-msg:frontier_plan instead.")
  (frontier_plan m))

(cl:ensure-generic-function 'parent_id-val :lambda-list '(m))
(cl:defmethod parent_id-val ((m <ExecuteTrajectoryGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_trajectory_planner-msg:parent_id-val is deprecated.  Use spot_trajectory_planner-msg:parent_id instead.")
  (parent_id m))

(cl:ensure-generic-function 'add_frontier-val :lambda-list '(m))
(cl:defmethod add_frontier-val ((m <ExecuteTrajectoryGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_trajectory_planner-msg:add_frontier-val is deprecated.  Use spot_trajectory_planner-msg:add_frontier instead.")
  (add_frontier m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecuteTrajectoryGoal>) ostream)
  "Serializes a message object of type '<ExecuteTrajectoryGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'frontier_plan) ostream)
  (cl:let* ((signed (cl:slot-value msg 'parent_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'add_frontier) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecuteTrajectoryGoal>) istream)
  "Deserializes a message object of type '<ExecuteTrajectoryGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'frontier_plan) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parent_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'add_frontier) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecuteTrajectoryGoal>)))
  "Returns string type for a message object of type '<ExecuteTrajectoryGoal>"
  "spot_trajectory_planner/ExecuteTrajectoryGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecuteTrajectoryGoal)))
  "Returns string type for a message object of type 'ExecuteTrajectoryGoal"
  "spot_trajectory_planner/ExecuteTrajectoryGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecuteTrajectoryGoal>)))
  "Returns md5sum for a message object of type '<ExecuteTrajectoryGoal>"
  "d9d017ffa8c844d5c0848ed4125c8d0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecuteTrajectoryGoal)))
  "Returns md5sum for a message object of type 'ExecuteTrajectoryGoal"
  "d9d017ffa8c844d5c0848ed4125c8d0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecuteTrajectoryGoal>)))
  "Returns full string definition for message of type '<ExecuteTrajectoryGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Action~%geometry_msgs/PoseArray frontier_plan~%int32 parent_id~%bool add_frontier~%~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecuteTrajectoryGoal)))
  "Returns full string definition for message of type 'ExecuteTrajectoryGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Action~%geometry_msgs/PoseArray frontier_plan~%int32 parent_id~%bool add_frontier~%~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecuteTrajectoryGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'frontier_plan))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecuteTrajectoryGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecuteTrajectoryGoal
    (cl:cons ':frontier_plan (frontier_plan msg))
    (cl:cons ':parent_id (parent_id msg))
    (cl:cons ':add_frontier (add_frontier msg))
))
