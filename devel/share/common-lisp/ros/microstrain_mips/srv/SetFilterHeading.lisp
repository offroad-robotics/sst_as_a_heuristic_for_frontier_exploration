; Auto-generated. Do not edit!


(cl:in-package microstrain_mips-srv)


;//! \htmlinclude SetFilterHeading-request.msg.html

(cl:defclass <SetFilterHeading-request> (roslisp-msg-protocol:ros-message)
  ((angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetFilterHeading-request (<SetFilterHeading-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetFilterHeading-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetFilterHeading-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_mips-srv:<SetFilterHeading-request> is deprecated: use microstrain_mips-srv:SetFilterHeading-request instead.")))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <SetFilterHeading-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_mips-srv:angle-val is deprecated.  Use microstrain_mips-srv:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetFilterHeading-request>) ostream)
  "Serializes a message object of type '<SetFilterHeading-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetFilterHeading-request>) istream)
  "Deserializes a message object of type '<SetFilterHeading-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetFilterHeading-request>)))
  "Returns string type for a service object of type '<SetFilterHeading-request>"
  "microstrain_mips/SetFilterHeadingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFilterHeading-request)))
  "Returns string type for a service object of type 'SetFilterHeading-request"
  "microstrain_mips/SetFilterHeadingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetFilterHeading-request>)))
  "Returns md5sum for a message object of type '<SetFilterHeading-request>"
  "194939c001a63802dc4131cae92cda22")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetFilterHeading-request)))
  "Returns md5sum for a message object of type 'SetFilterHeading-request"
  "194939c001a63802dc4131cae92cda22")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetFilterHeading-request>)))
  "Returns full string definition for message of type '<SetFilterHeading-request>"
  (cl:format cl:nil "float32 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetFilterHeading-request)))
  "Returns full string definition for message of type 'SetFilterHeading-request"
  (cl:format cl:nil "float32 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetFilterHeading-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetFilterHeading-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetFilterHeading-request
    (cl:cons ':angle (angle msg))
))
;//! \htmlinclude SetFilterHeading-response.msg.html

(cl:defclass <SetFilterHeading-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetFilterHeading-response (<SetFilterHeading-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetFilterHeading-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetFilterHeading-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name microstrain_mips-srv:<SetFilterHeading-response> is deprecated: use microstrain_mips-srv:SetFilterHeading-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetFilterHeading-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader microstrain_mips-srv:success-val is deprecated.  Use microstrain_mips-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetFilterHeading-response>) ostream)
  "Serializes a message object of type '<SetFilterHeading-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetFilterHeading-response>) istream)
  "Deserializes a message object of type '<SetFilterHeading-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetFilterHeading-response>)))
  "Returns string type for a service object of type '<SetFilterHeading-response>"
  "microstrain_mips/SetFilterHeadingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFilterHeading-response)))
  "Returns string type for a service object of type 'SetFilterHeading-response"
  "microstrain_mips/SetFilterHeadingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetFilterHeading-response>)))
  "Returns md5sum for a message object of type '<SetFilterHeading-response>"
  "194939c001a63802dc4131cae92cda22")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetFilterHeading-response)))
  "Returns md5sum for a message object of type 'SetFilterHeading-response"
  "194939c001a63802dc4131cae92cda22")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetFilterHeading-response>)))
  "Returns full string definition for message of type '<SetFilterHeading-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetFilterHeading-response)))
  "Returns full string definition for message of type 'SetFilterHeading-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetFilterHeading-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetFilterHeading-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetFilterHeading-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetFilterHeading)))
  'SetFilterHeading-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetFilterHeading)))
  'SetFilterHeading-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFilterHeading)))
  "Returns string type for a service object of type '<SetFilterHeading>"
  "microstrain_mips/SetFilterHeading")