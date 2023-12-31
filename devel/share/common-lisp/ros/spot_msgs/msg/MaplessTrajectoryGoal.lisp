; Auto-generated. Do not edit!


(cl:in-package spot_msgs-msg)


;//! \htmlinclude MaplessTrajectoryGoal.msg.html

(cl:defclass <MaplessTrajectoryGoal> (roslisp-msg-protocol:ros-message)
  ((target_pose
    :reader target_pose
    :initarg :target_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (duration
    :reader duration
    :initarg :duration
    :type std_msgs-msg:Duration
    :initform (cl:make-instance 'std_msgs-msg:Duration))
   (precise_positioning
    :reader precise_positioning
    :initarg :precise_positioning
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MaplessTrajectoryGoal (<MaplessTrajectoryGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MaplessTrajectoryGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MaplessTrajectoryGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spot_msgs-msg:<MaplessTrajectoryGoal> is deprecated: use spot_msgs-msg:MaplessTrajectoryGoal instead.")))

(cl:ensure-generic-function 'target_pose-val :lambda-list '(m))
(cl:defmethod target_pose-val ((m <MaplessTrajectoryGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_msgs-msg:target_pose-val is deprecated.  Use spot_msgs-msg:target_pose instead.")
  (target_pose m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <MaplessTrajectoryGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_msgs-msg:duration-val is deprecated.  Use spot_msgs-msg:duration instead.")
  (duration m))

(cl:ensure-generic-function 'precise_positioning-val :lambda-list '(m))
(cl:defmethod precise_positioning-val ((m <MaplessTrajectoryGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_msgs-msg:precise_positioning-val is deprecated.  Use spot_msgs-msg:precise_positioning instead.")
  (precise_positioning m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MaplessTrajectoryGoal>) ostream)
  "Serializes a message object of type '<MaplessTrajectoryGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'duration) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'precise_positioning) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MaplessTrajectoryGoal>) istream)
  "Deserializes a message object of type '<MaplessTrajectoryGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'duration) istream)
    (cl:setf (cl:slot-value msg 'precise_positioning) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MaplessTrajectoryGoal>)))
  "Returns string type for a message object of type '<MaplessTrajectoryGoal>"
  "spot_msgs/MaplessTrajectoryGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MaplessTrajectoryGoal)))
  "Returns string type for a message object of type 'MaplessTrajectoryGoal"
  "spot_msgs/MaplessTrajectoryGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MaplessTrajectoryGoal>)))
  "Returns md5sum for a message object of type '<MaplessTrajectoryGoal>"
  "fb69449cdbd99a24e29c2aab36d5f965")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MaplessTrajectoryGoal)))
  "Returns md5sum for a message object of type 'MaplessTrajectoryGoal"
  "fb69449cdbd99a24e29c2aab36d5f965")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MaplessTrajectoryGoal>)))
  "Returns full string definition for message of type '<MaplessTrajectoryGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Action~%geometry_msgs/PoseStamped target_pose~%std_msgs/Duration duration~%bool precise_positioning~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Duration~%duration data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MaplessTrajectoryGoal)))
  "Returns full string definition for message of type 'MaplessTrajectoryGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Action~%geometry_msgs/PoseStamped target_pose~%std_msgs/Duration duration~%bool precise_positioning~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Duration~%duration data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MaplessTrajectoryGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'duration))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MaplessTrajectoryGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'MaplessTrajectoryGoal
    (cl:cons ':target_pose (target_pose msg))
    (cl:cons ':duration (duration msg))
    (cl:cons ':precise_positioning (precise_positioning msg))
))
