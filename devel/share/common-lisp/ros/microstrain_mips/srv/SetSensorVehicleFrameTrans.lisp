; Auto-generated. Do not edit!


(cl:in-package microstrain_mips-srv)


;//! \htmlinclude SetSensorVehicleFrameTrans-request.msg.html

(cl:defclass <SetSensorVehicleFrameTrans-request> (roslisp-msg-protocol:ros-message)
  ((angle
    :reader angle
    :initarg :angle
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass SetSensorVehicleFrameTrans-request (<SetSensorVehicleFrameTrans-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetSensorVehicleFrameTrans-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetSensorVehicleFrameTrans-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_mips-srv:<SetSensorVehicleFrameTrans-request> is deprecated: use microstrain_mips-srv:SetSensorVehicleFrameTrans-request instead.")))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <SetSensorVehicleFrameTrans-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_mips-srv:angle-val is deprecated.  Use microstrain_mips-srv:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetSensorVehicleFrameTrans-request>) ostream)
  "Serializes a message object of type '<SetSensorVehicleFrameTrans-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angle) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetSensorVehicleFrameTrans-request>) istream)
  "Deserializes a message object of type '<SetSensorVehicleFrameTrans-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angle) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetSensorVehicleFrameTrans-request>)))
  "Returns string type for a service object of type '<SetSensorVehicleFrameTrans-request>"
  "microstrain_mips/SetSensorVehicleFrameTransRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSensorVehicleFrameTrans-request)))
  "Returns string type for a service object of type 'SetSensorVehicleFrameTrans-request"
  "microstrain_mips/SetSensorVehicleFrameTransRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetSensorVehicleFrameTrans-request>)))
  "Returns md5sum for a message object of type '<SetSensorVehicleFrameTrans-request>"
  "dae0af6e9e855f125599090c94e6955e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetSensorVehicleFrameTrans-request)))
  "Returns md5sum for a message object of type 'SetSensorVehicleFrameTrans-request"
  "dae0af6e9e855f125599090c94e6955e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetSensorVehicleFrameTrans-request>)))
  "Returns full string definition for message of type '<SetSensorVehicleFrameTrans-request>"
  (cl:format cl:nil "geometry_msgs/Vector3 angle~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetSensorVehicleFrameTrans-request)))
  "Returns full string definition for message of type 'SetSensorVehicleFrameTrans-request"
  (cl:format cl:nil "geometry_msgs/Vector3 angle~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetSensorVehicleFrameTrans-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angle))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetSensorVehicleFrameTrans-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetSensorVehicleFrameTrans-request
    (cl:cons ':angle (angle msg))
))
;//! \htmlinclude SetSensorVehicleFrameTrans-response.msg.html

(cl:defclass <SetSensorVehicleFrameTrans-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetSensorVehicleFrameTrans-response (<SetSensorVehicleFrameTrans-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetSensorVehicleFrameTrans-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetSensorVehicleFrameTrans-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_mips-srv:<SetSensorVehicleFrameTrans-response> is deprecated: use microstrain_mips-srv:SetSensorVehicleFrameTrans-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetSensorVehicleFrameTrans-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_mips-srv:success-val is deprecated.  Use microstrain_mips-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetSensorVehicleFrameTrans-response>) ostream)
  "Serializes a message object of type '<SetSensorVehicleFrameTrans-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetSensorVehicleFrameTrans-response>) istream)
  "Deserializes a message object of type '<SetSensorVehicleFrameTrans-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetSensorVehicleFrameTrans-response>)))
  "Returns string type for a service object of type '<SetSensorVehicleFrameTrans-response>"
  "microstrain_mips/SetSensorVehicleFrameTransResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSensorVehicleFrameTrans-response)))
  "Returns string type for a service object of type 'SetSensorVehicleFrameTrans-response"
  "microstrain_mips/SetSensorVehicleFrameTransResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetSensorVehicleFrameTrans-response>)))
  "Returns md5sum for a message object of type '<SetSensorVehicleFrameTrans-response>"
  "dae0af6e9e855f125599090c94e6955e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetSensorVehicleFrameTrans-response)))
  "Returns md5sum for a message object of type 'SetSensorVehicleFrameTrans-response"
  "dae0af6e9e855f125599090c94e6955e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetSensorVehicleFrameTrans-response>)))
  "Returns full string definition for message of type '<SetSensorVehicleFrameTrans-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetSensorVehicleFrameTrans-response)))
  "Returns full string definition for message of type 'SetSensorVehicleFrameTrans-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetSensorVehicleFrameTrans-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetSensorVehicleFrameTrans-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetSensorVehicleFrameTrans-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetSensorVehicleFrameTrans)))
  'SetSensorVehicleFrameTrans-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetSensorVehicleFrameTrans)))
  'SetSensorVehicleFrameTrans-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSensorVehicleFrameTrans)))
  "Returns string type for a service object of type '<SetSensorVehicleFrameTrans>"
  "microstrain_mips/SetSensorVehicleFrameTrans")