; Auto-generated. Do not edit!


(cl:in-package spot_msgs-msg)


;//! \htmlinclude TrajectoryBodyGoal.msg.html

(cl:defclass <TrajectoryBodyGoal> (roslisp-msg-protocol:ros-message)
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

(cl:defclass TrajectoryBodyGoal (<TrajectoryBodyGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryBodyGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryBodyGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spot_msgs-msg:<TrajectoryBodyGoal> is deprecated: use spot_msgs-msg:TrajectoryBodyGoal instead.")))

(cl:ensure-generic-function 'target_pose-val :lambda-list '(m))
(cl:defmethod target_pose-val ((m <TrajectoryBodyGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_msgs-msg:target_pose-val is deprecated.  Use spot_msgs-msg:target_pose instead.")
  (target_pose m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <TrajectoryBodyGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_msgs-msg:duration-val is deprecated.  Use spot_msgs-msg:duration instead.")
  (duration m))

(cl:ensure-generic-function 'precise_positioning-val :lambda-list '(m))
(cl:defmethod precise_positioning-val ((m <TrajectoryBodyGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_msgs-msg:precise_positioning-val is deprecated.  Use spot_msgs-msg:precise_positioning instead.")
  (precise_positioning m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryBodyGoal>) ostream)
  "Serializes a message object of type '<TrajectoryBodyGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'duration) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'precise_positioning) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryBodyGoal>) istream)
  "Deserializes a message object of type '<TrajectoryBodyGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'duration) istream)
    (cl:setf (cl:slot-value msg 'precise_positioning) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryBodyGoal>)))
  "Returns string type for a message object of type '<TrajectoryBodyGoal>"
  "spot_msgs/TrajectoryBodyGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryBodyGoal)))
  "Returns string type for a message object of type 'TrajectoryBodyGoal"
  "spot_msgs/TrajectoryBodyGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryBodyGoal>)))
  "Returns md5sum for a message object of type '<TrajectoryBodyGoal>"
  "fb69449cdbd99a24e29c2aab36d5f965")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryBodyGoal)))
  "Returns md5sum for a message object of type 'TrajectoryBodyGoal"
  "fb69449cdbd99a24e29c2aab36d5f965")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryBodyGoal>)))
  "Returns full string definition for message of type '<TrajectoryBodyGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%geometry_msgs/PoseStamped target_pose~%# Same as Trajectory.action but specifically in the body frame~%# After this duration, the command will time out and the robot will stop. Must be non-zero~%std_msgs/Duration duration~%# If true, the feedback from the trajectory command must indicate that the robot is~%# at the goal position. If set to false, the robot being near the goal is equivalent to~%# it being at the goal. This is based on the feedback received from the boston dynamics~%# API call at~%# https://dev.bostondynamics.com/protos/bosdyn/api/proto_reference.html?highlight=status_near_goal#se2trajectorycommand-feedback-status~%bool precise_positioning~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Duration~%duration data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryBodyGoal)))
  "Returns full string definition for message of type 'TrajectoryBodyGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%geometry_msgs/PoseStamped target_pose~%# Same as Trajectory.action but specifically in the body frame~%# After this duration, the command will time out and the robot will stop. Must be non-zero~%std_msgs/Duration duration~%# If true, the feedback from the trajectory command must indicate that the robot is~%# at the goal position. If set to false, the robot being near the goal is equivalent to~%# it being at the goal. This is based on the feedback received from the boston dynamics~%# API call at~%# https://dev.bostondynamics.com/protos/bosdyn/api/proto_reference.html?highlight=status_near_goal#se2trajectorycommand-feedback-status~%bool precise_positioning~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Duration~%duration data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryBodyGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'duration))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryBodyGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryBodyGoal
    (cl:cons ':target_pose (target_pose msg))
    (cl:cons ':duration (duration msg))
    (cl:cons ':precise_positioning (precise_positioning msg))
))
