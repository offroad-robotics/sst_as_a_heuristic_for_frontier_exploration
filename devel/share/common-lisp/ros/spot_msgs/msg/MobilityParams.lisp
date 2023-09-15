; Auto-generated. Do not edit!


(cl:in-package spot_msgs-msg)


;//! \htmlinclude MobilityParams.msg.html

(cl:defclass <MobilityParams> (roslisp-msg-protocol:ros-message)
  ((body_control
    :reader body_control
    :initarg :body_control
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (locomotion_hint
    :reader locomotion_hint
    :initarg :locomotion_hint
    :type cl:integer
    :initform 0)
   (stair_hint
    :reader stair_hint
    :initarg :stair_hint
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MobilityParams (<MobilityParams>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MobilityParams>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MobilityParams)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spot_msgs-msg:<MobilityParams> is deprecated: use spot_msgs-msg:MobilityParams instead.")))

(cl:ensure-generic-function 'body_control-val :lambda-list '(m))
(cl:defmethod body_control-val ((m <MobilityParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_msgs-msg:body_control-val is deprecated.  Use spot_msgs-msg:body_control instead.")
  (body_control m))

(cl:ensure-generic-function 'locomotion_hint-val :lambda-list '(m))
(cl:defmethod locomotion_hint-val ((m <MobilityParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_msgs-msg:locomotion_hint-val is deprecated.  Use spot_msgs-msg:locomotion_hint instead.")
  (locomotion_hint m))

(cl:ensure-generic-function 'stair_hint-val :lambda-list '(m))
(cl:defmethod stair_hint-val ((m <MobilityParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_msgs-msg:stair_hint-val is deprecated.  Use spot_msgs-msg:stair_hint instead.")
  (stair_hint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MobilityParams>) ostream)
  "Serializes a message object of type '<MobilityParams>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'body_control) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'locomotion_hint)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'locomotion_hint)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'locomotion_hint)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'locomotion_hint)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stair_hint) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MobilityParams>) istream)
  "Deserializes a message object of type '<MobilityParams>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'body_control) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'locomotion_hint)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'locomotion_hint)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'locomotion_hint)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'locomotion_hint)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'stair_hint) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MobilityParams>)))
  "Returns string type for a message object of type '<MobilityParams>"
  "spot_msgs/MobilityParams")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MobilityParams)))
  "Returns string type for a message object of type 'MobilityParams"
  "spot_msgs/MobilityParams")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MobilityParams>)))
  "Returns md5sum for a message object of type '<MobilityParams>"
  "87bda7c4fbd2a6b19bdc029effa9f715")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MobilityParams)))
  "Returns md5sum for a message object of type 'MobilityParams"
  "87bda7c4fbd2a6b19bdc029effa9f715")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MobilityParams>)))
  "Returns full string definition for message of type '<MobilityParams>"
  (cl:format cl:nil "geometry_msgs/Pose body_control~%uint32 locomotion_hint~%bool stair_hint~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MobilityParams)))
  "Returns full string definition for message of type 'MobilityParams"
  (cl:format cl:nil "geometry_msgs/Pose body_control~%uint32 locomotion_hint~%bool stair_hint~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MobilityParams>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'body_control))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MobilityParams>))
  "Converts a ROS message object to a list"
  (cl:list 'MobilityParams
    (cl:cons ':body_control (body_control msg))
    (cl:cons ':locomotion_hint (locomotion_hint msg))
    (cl:cons ':stair_hint (stair_hint msg))
))
