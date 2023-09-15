; Auto-generated. Do not edit!


(cl:in-package ssl_frontier_selection-srv)


;//! \htmlinclude StampMap-request.msg.html

(cl:defclass <StampMap-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StampMap-request (<StampMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StampMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StampMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssl_frontier_selection-srv:<StampMap-request> is deprecated: use ssl_frontier_selection-srv:StampMap-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StampMap-request>) ostream)
  "Serializes a message object of type '<StampMap-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StampMap-request>) istream)
  "Deserializes a message object of type '<StampMap-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StampMap-request>)))
  "Returns string type for a service object of type '<StampMap-request>"
  "ssl_frontier_selection/StampMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StampMap-request)))
  "Returns string type for a service object of type 'StampMap-request"
  "ssl_frontier_selection/StampMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StampMap-request>)))
  "Returns md5sum for a message object of type '<StampMap-request>"
  "e835b04f93d0b30fd8cb71e0967a16db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StampMap-request)))
  "Returns md5sum for a message object of type 'StampMap-request"
  "e835b04f93d0b30fd8cb71e0967a16db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StampMap-request>)))
  "Returns full string definition for message of type '<StampMap-request>"
  (cl:format cl:nil "# request~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StampMap-request)))
  "Returns full string definition for message of type 'StampMap-request"
  (cl:format cl:nil "# request~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StampMap-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StampMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StampMap-request
))
;//! \htmlinclude StampMap-response.msg.html

(cl:defclass <StampMap-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass StampMap-response (<StampMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StampMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StampMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssl_frontier_selection-srv:<StampMap-response> is deprecated: use ssl_frontier_selection-srv:StampMap-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <StampMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_frontier_selection-srv:success-val is deprecated.  Use ssl_frontier_selection-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <StampMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_frontier_selection-srv:msg-val is deprecated.  Use ssl_frontier_selection-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StampMap-response>) ostream)
  "Serializes a message object of type '<StampMap-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StampMap-response>) istream)
  "Deserializes a message object of type '<StampMap-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StampMap-response>)))
  "Returns string type for a service object of type '<StampMap-response>"
  "ssl_frontier_selection/StampMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StampMap-response)))
  "Returns string type for a service object of type 'StampMap-response"
  "ssl_frontier_selection/StampMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StampMap-response>)))
  "Returns md5sum for a message object of type '<StampMap-response>"
  "e835b04f93d0b30fd8cb71e0967a16db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StampMap-response)))
  "Returns md5sum for a message object of type 'StampMap-response"
  "e835b04f93d0b30fd8cb71e0967a16db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StampMap-response>)))
  "Returns full string definition for message of type '<StampMap-response>"
  (cl:format cl:nil "# response~%bool success~%string msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StampMap-response)))
  "Returns full string definition for message of type 'StampMap-response"
  (cl:format cl:nil "# response~%bool success~%string msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StampMap-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StampMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StampMap-response
    (cl:cons ':success (success msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StampMap)))
  'StampMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StampMap)))
  'StampMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StampMap)))
  "Returns string type for a service object of type '<StampMap>"
  "ssl_frontier_selection/StampMap")