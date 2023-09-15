; Auto-generated. Do not edit!


(cl:in-package ssl_frontier_selection-srv)


;//! \htmlinclude RemoveFrontier-request.msg.html

(cl:defclass <RemoveFrontier-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass RemoveFrontier-request (<RemoveFrontier-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoveFrontier-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoveFrontier-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssl_frontier_selection-srv:<RemoveFrontier-request> is deprecated: use ssl_frontier_selection-srv:RemoveFrontier-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <RemoveFrontier-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_frontier_selection-srv:id-val is deprecated.  Use ssl_frontier_selection-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoveFrontier-request>) ostream)
  "Serializes a message object of type '<RemoveFrontier-request>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoveFrontier-request>) istream)
  "Deserializes a message object of type '<RemoveFrontier-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoveFrontier-request>)))
  "Returns string type for a service object of type '<RemoveFrontier-request>"
  "ssl_frontier_selection/RemoveFrontierRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveFrontier-request)))
  "Returns string type for a service object of type 'RemoveFrontier-request"
  "ssl_frontier_selection/RemoveFrontierRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoveFrontier-request>)))
  "Returns md5sum for a message object of type '<RemoveFrontier-request>"
  "f66e2f1a2389241ede90395037adaed8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoveFrontier-request)))
  "Returns md5sum for a message object of type 'RemoveFrontier-request"
  "f66e2f1a2389241ede90395037adaed8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoveFrontier-request>)))
  "Returns full string definition for message of type '<RemoveFrontier-request>"
  (cl:format cl:nil "# request~%int32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoveFrontier-request)))
  "Returns full string definition for message of type 'RemoveFrontier-request"
  (cl:format cl:nil "# request~%int32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoveFrontier-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoveFrontier-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoveFrontier-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude RemoveFrontier-response.msg.html

(cl:defclass <RemoveFrontier-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RemoveFrontier-response (<RemoveFrontier-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoveFrontier-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoveFrontier-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssl_frontier_selection-srv:<RemoveFrontier-response> is deprecated: use ssl_frontier_selection-srv:RemoveFrontier-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RemoveFrontier-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_frontier_selection-srv:success-val is deprecated.  Use ssl_frontier_selection-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoveFrontier-response>) ostream)
  "Serializes a message object of type '<RemoveFrontier-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoveFrontier-response>) istream)
  "Deserializes a message object of type '<RemoveFrontier-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoveFrontier-response>)))
  "Returns string type for a service object of type '<RemoveFrontier-response>"
  "ssl_frontier_selection/RemoveFrontierResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveFrontier-response)))
  "Returns string type for a service object of type 'RemoveFrontier-response"
  "ssl_frontier_selection/RemoveFrontierResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoveFrontier-response>)))
  "Returns md5sum for a message object of type '<RemoveFrontier-response>"
  "f66e2f1a2389241ede90395037adaed8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoveFrontier-response)))
  "Returns md5sum for a message object of type 'RemoveFrontier-response"
  "f66e2f1a2389241ede90395037adaed8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoveFrontier-response>)))
  "Returns full string definition for message of type '<RemoveFrontier-response>"
  (cl:format cl:nil "# response~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoveFrontier-response)))
  "Returns full string definition for message of type 'RemoveFrontier-response"
  (cl:format cl:nil "# response~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoveFrontier-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoveFrontier-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoveFrontier-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RemoveFrontier)))
  'RemoveFrontier-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RemoveFrontier)))
  'RemoveFrontier-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveFrontier)))
  "Returns string type for a service object of type '<RemoveFrontier>"
  "ssl_frontier_selection/RemoveFrontier")