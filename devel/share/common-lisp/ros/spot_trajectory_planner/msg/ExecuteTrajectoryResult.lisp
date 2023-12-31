; Auto-generated. Do not edit!


(cl:in-package spot_trajectory_planner-msg)


;//! \htmlinclude ExecuteTrajectoryResult.msg.html

(cl:defclass <ExecuteTrajectoryResult> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (last_success
    :reader last_success
    :initarg :last_success
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass ExecuteTrajectoryResult (<ExecuteTrajectoryResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecuteTrajectoryResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecuteTrajectoryResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spot_trajectory_planner-msg:<ExecuteTrajectoryResult> is deprecated: use spot_trajectory_planner-msg:ExecuteTrajectoryResult instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ExecuteTrajectoryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_trajectory_planner-msg:result-val is deprecated.  Use spot_trajectory_planner-msg:result instead.")
  (result m))

(cl:ensure-generic-function 'last_success-val :lambda-list '(m))
(cl:defmethod last_success-val ((m <ExecuteTrajectoryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_trajectory_planner-msg:last_success-val is deprecated.  Use spot_trajectory_planner-msg:last_success instead.")
  (last_success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecuteTrajectoryResult>) ostream)
  "Serializes a message object of type '<ExecuteTrajectoryResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'last_success) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecuteTrajectoryResult>) istream)
  "Deserializes a message object of type '<ExecuteTrajectoryResult>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'last_success) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecuteTrajectoryResult>)))
  "Returns string type for a message object of type '<ExecuteTrajectoryResult>"
  "spot_trajectory_planner/ExecuteTrajectoryResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecuteTrajectoryResult)))
  "Returns string type for a message object of type 'ExecuteTrajectoryResult"
  "spot_trajectory_planner/ExecuteTrajectoryResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecuteTrajectoryResult>)))
  "Returns md5sum for a message object of type '<ExecuteTrajectoryResult>"
  "dc617279930e6e8d4b25ae649bd40be3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecuteTrajectoryResult)))
  "Returns md5sum for a message object of type 'ExecuteTrajectoryResult"
  "dc617279930e6e8d4b25ae649bd40be3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecuteTrajectoryResult>)))
  "Returns full string definition for message of type '<ExecuteTrajectoryResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%bool result~%geometry_msgs/Pose last_success~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecuteTrajectoryResult)))
  "Returns full string definition for message of type 'ExecuteTrajectoryResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%bool result~%geometry_msgs/Pose last_success~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecuteTrajectoryResult>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'last_success))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecuteTrajectoryResult>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecuteTrajectoryResult
    (cl:cons ':result (result msg))
    (cl:cons ':last_success (last_success msg))
))
