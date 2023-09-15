; Auto-generated. Do not edit!


(cl:in-package microstrain_mips-srv)


;//! \htmlinclude SetFilterEuler-request.msg.html

(cl:defclass <SetFilterEuler-request> (roslisp-msg-protocol:ros-message)
  ((angle
    :reader angle
    :initarg :angle
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass SetFilterEuler-request (<SetFilterEuler-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetFilterEuler-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetFilterEuler-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_mips-srv:<SetFilterEuler-request> is deprecated: use microstrain_mips-srv:SetFilterEuler-request instead.")))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <SetFilterEuler-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_mips-srv:angle-val is deprecated.  Use microstrain_mips-srv:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetFilterEuler-request>) ostream)
  "Serializes a message object of type '<SetFilterEuler-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angle) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetFilterEuler-request>) istream)
  "Deserializes a message object of type '<SetFilterEuler-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angle) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetFilterEuler-request>)))
  "Returns string type for a service object of type '<SetFilterEuler-request>"
  "microstrain_mips/SetFilterEulerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFilterEuler-request)))
  "Returns string type for a service object of type 'SetFilterEuler-request"
  "microstrain_mips/SetFilterEulerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetFilterEuler-request>)))
  "Returns md5sum for a message object of type '<SetFilterEuler-request>"
  "dae0af6e9e855f125599090c94e6955e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetFilterEuler-request)))
  "Returns md5sum for a message object of type 'SetFilterEuler-request"
  "dae0af6e9e855f125599090c94e6955e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetFilterEuler-request>)))
  "Returns full string definition for message of type '<SetFilterEuler-request>"
  (cl:format cl:nil "geometry_msgs/Vector3 angle~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetFilterEuler-request)))
  "Returns full string definition for message of type 'SetFilterEuler-request"
  (cl:format cl:nil "geometry_msgs/Vector3 angle~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetFilterEuler-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angle))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetFilterEuler-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetFilterEuler-request
    (cl:cons ':angle (angle msg))
))
;//! \htmlinclude SetFilterEuler-response.msg.html

(cl:defclass <SetFilterEuler-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetFilterEuler-response (<SetFilterEuler-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetFilterEuler-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetFilterEuler-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_mips-srv:<SetFilterEuler-response> is deprecated: use microstrain_mips-srv:SetFilterEuler-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetFilterEuler-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_mips-srv:success-val is deprecated.  Use microstrain_mips-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetFilterEuler-response>) ostream)
  "Serializes a message object of type '<SetFilterEuler-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetFilterEuler-response>) istream)
  "Deserializes a message object of type '<SetFilterEuler-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetFilterEuler-response>)))
  "Returns string type for a service object of type '<SetFilterEuler-response>"
  "microstrain_mips/SetFilterEulerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFilterEuler-response)))
  "Returns string type for a service object of type 'SetFilterEuler-response"
  "microstrain_mips/SetFilterEulerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetFilterEuler-response>)))
  "Returns md5sum for a message object of type '<SetFilterEuler-response>"
  "dae0af6e9e855f125599090c94e6955e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetFilterEuler-response)))
  "Returns md5sum for a message object of type 'SetFilterEuler-response"
  "dae0af6e9e855f125599090c94e6955e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetFilterEuler-response>)))
  "Returns full string definition for message of type '<SetFilterEuler-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetFilterEuler-response)))
  "Returns full string definition for message of type 'SetFilterEuler-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetFilterEuler-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetFilterEuler-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetFilterEuler-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetFilterEuler)))
  'SetFilterEuler-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetFilterEuler)))
  'SetFilterEuler-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFilterEuler)))
  "Returns string type for a service object of type '<SetFilterEuler>"
  "microstrain_mips/SetFilterEuler")