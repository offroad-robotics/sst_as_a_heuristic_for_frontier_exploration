; Auto-generated. Do not edit!


(cl:in-package microstrain_mips-srv)


;//! \htmlinclude SetSensorVehicleFrameOffset-request.msg.html

(cl:defclass <SetSensorVehicleFrameOffset-request> (roslisp-msg-protocol:ros-message)
  ((offset
    :reader offset
    :initarg :offset
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass SetSensorVehicleFrameOffset-request (<SetSensorVehicleFrameOffset-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetSensorVehicleFrameOffset-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetSensorVehicleFrameOffset-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_mips-srv:<SetSensorVehicleFrameOffset-request> is deprecated: use microstrain_mips-srv:SetSensorVehicleFrameOffset-request instead.")))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <SetSensorVehicleFrameOffset-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_mips-srv:offset-val is deprecated.  Use microstrain_mips-srv:offset instead.")
  (offset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetSensorVehicleFrameOffset-request>) ostream)
  "Serializes a message object of type '<SetSensorVehicleFrameOffset-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'offset) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetSensorVehicleFrameOffset-request>) istream)
  "Deserializes a message object of type '<SetSensorVehicleFrameOffset-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'offset) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetSensorVehicleFrameOffset-request>)))
  "Returns string type for a service object of type '<SetSensorVehicleFrameOffset-request>"
  "microstrain_mips/SetSensorVehicleFrameOffsetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSensorVehicleFrameOffset-request)))
  "Returns string type for a service object of type 'SetSensorVehicleFrameOffset-request"
  "microstrain_mips/SetSensorVehicleFrameOffsetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetSensorVehicleFrameOffset-request>)))
  "Returns md5sum for a message object of type '<SetSensorVehicleFrameOffset-request>"
  "17d27ff1259ce523baf9de57b7c37e18")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetSensorVehicleFrameOffset-request)))
  "Returns md5sum for a message object of type 'SetSensorVehicleFrameOffset-request"
  "17d27ff1259ce523baf9de57b7c37e18")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetSensorVehicleFrameOffset-request>)))
  "Returns full string definition for message of type '<SetSensorVehicleFrameOffset-request>"
  (cl:format cl:nil "geometry_msgs/Vector3 offset~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetSensorVehicleFrameOffset-request)))
  "Returns full string definition for message of type 'SetSensorVehicleFrameOffset-request"
  (cl:format cl:nil "geometry_msgs/Vector3 offset~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetSensorVehicleFrameOffset-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'offset))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetSensorVehicleFrameOffset-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetSensorVehicleFrameOffset-request
    (cl:cons ':offset (offset msg))
))
;//! \htmlinclude SetSensorVehicleFrameOffset-response.msg.html

(cl:defclass <SetSensorVehicleFrameOffset-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetSensorVehicleFrameOffset-response (<SetSensorVehicleFrameOffset-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetSensorVehicleFrameOffset-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetSensorVehicleFrameOffset-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_mips-srv:<SetSensorVehicleFrameOffset-response> is deprecated: use microstrain_mips-srv:SetSensorVehicleFrameOffset-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetSensorVehicleFrameOffset-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_mips-srv:success-val is deprecated.  Use microstrain_mips-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetSensorVehicleFrameOffset-response>) ostream)
  "Serializes a message object of type '<SetSensorVehicleFrameOffset-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetSensorVehicleFrameOffset-response>) istream)
  "Deserializes a message object of type '<SetSensorVehicleFrameOffset-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetSensorVehicleFrameOffset-response>)))
  "Returns string type for a service object of type '<SetSensorVehicleFrameOffset-response>"
  "microstrain_mips/SetSensorVehicleFrameOffsetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSensorVehicleFrameOffset-response)))
  "Returns string type for a service object of type 'SetSensorVehicleFrameOffset-response"
  "microstrain_mips/SetSensorVehicleFrameOffsetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetSensorVehicleFrameOffset-response>)))
  "Returns md5sum for a message object of type '<SetSensorVehicleFrameOffset-response>"
  "17d27ff1259ce523baf9de57b7c37e18")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetSensorVehicleFrameOffset-response)))
  "Returns md5sum for a message object of type 'SetSensorVehicleFrameOffset-response"
  "17d27ff1259ce523baf9de57b7c37e18")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetSensorVehicleFrameOffset-response>)))
  "Returns full string definition for message of type '<SetSensorVehicleFrameOffset-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetSensorVehicleFrameOffset-response)))
  "Returns full string definition for message of type 'SetSensorVehicleFrameOffset-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetSensorVehicleFrameOffset-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetSensorVehicleFrameOffset-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetSensorVehicleFrameOffset-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetSensorVehicleFrameOffset)))
  'SetSensorVehicleFrameOffset-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetSensorVehicleFrameOffset)))
  'SetSensorVehicleFrameOffset-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSensorVehicleFrameOffset)))
  "Returns string type for a service object of type '<SetSensorVehicleFrameOffset>"
  "microstrain_mips/SetSensorVehicleFrameOffset")