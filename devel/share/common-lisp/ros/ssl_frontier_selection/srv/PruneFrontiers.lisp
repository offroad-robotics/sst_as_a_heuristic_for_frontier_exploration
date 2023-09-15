; Auto-generated. Do not edit!


(cl:in-package ssl_frontier_selection-srv)


;//! \htmlinclude PruneFrontiers-request.msg.html

(cl:defclass <PruneFrontiers-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass PruneFrontiers-request (<PruneFrontiers-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PruneFrontiers-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PruneFrontiers-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssl_frontier_selection-srv:<PruneFrontiers-request> is deprecated: use ssl_frontier_selection-srv:PruneFrontiers-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PruneFrontiers-request>) ostream)
  "Serializes a message object of type '<PruneFrontiers-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PruneFrontiers-request>) istream)
  "Deserializes a message object of type '<PruneFrontiers-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PruneFrontiers-request>)))
  "Returns string type for a service object of type '<PruneFrontiers-request>"
  "ssl_frontier_selection/PruneFrontiersRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PruneFrontiers-request)))
  "Returns string type for a service object of type 'PruneFrontiers-request"
  "ssl_frontier_selection/PruneFrontiersRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PruneFrontiers-request>)))
  "Returns md5sum for a message object of type '<PruneFrontiers-request>"
  "5e0b05d933c831596f58cdbe4fb9041b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PruneFrontiers-request)))
  "Returns md5sum for a message object of type 'PruneFrontiers-request"
  "5e0b05d933c831596f58cdbe4fb9041b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PruneFrontiers-request>)))
  "Returns full string definition for message of type '<PruneFrontiers-request>"
  (cl:format cl:nil "# request~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PruneFrontiers-request)))
  "Returns full string definition for message of type 'PruneFrontiers-request"
  (cl:format cl:nil "# request~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PruneFrontiers-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PruneFrontiers-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PruneFrontiers-request
))
;//! \htmlinclude PruneFrontiers-response.msg.html

(cl:defclass <PruneFrontiers-response> (roslisp-msg-protocol:ros-message)
  ((pruned
    :reader pruned
    :initarg :pruned
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass PruneFrontiers-response (<PruneFrontiers-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PruneFrontiers-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PruneFrontiers-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssl_frontier_selection-srv:<PruneFrontiers-response> is deprecated: use ssl_frontier_selection-srv:PruneFrontiers-response instead.")))

(cl:ensure-generic-function 'pruned-val :lambda-list '(m))
(cl:defmethod pruned-val ((m <PruneFrontiers-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_frontier_selection-srv:pruned-val is deprecated.  Use ssl_frontier_selection-srv:pruned instead.")
  (pruned m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PruneFrontiers-response>) ostream)
  "Serializes a message object of type '<PruneFrontiers-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pruned))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'pruned))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PruneFrontiers-response>) istream)
  "Deserializes a message object of type '<PruneFrontiers-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pruned) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pruned)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PruneFrontiers-response>)))
  "Returns string type for a service object of type '<PruneFrontiers-response>"
  "ssl_frontier_selection/PruneFrontiersResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PruneFrontiers-response)))
  "Returns string type for a service object of type 'PruneFrontiers-response"
  "ssl_frontier_selection/PruneFrontiersResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PruneFrontiers-response>)))
  "Returns md5sum for a message object of type '<PruneFrontiers-response>"
  "5e0b05d933c831596f58cdbe4fb9041b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PruneFrontiers-response)))
  "Returns md5sum for a message object of type 'PruneFrontiers-response"
  "5e0b05d933c831596f58cdbe4fb9041b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PruneFrontiers-response>)))
  "Returns full string definition for message of type '<PruneFrontiers-response>"
  (cl:format cl:nil "# response~%int32[] pruned ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PruneFrontiers-response)))
  "Returns full string definition for message of type 'PruneFrontiers-response"
  (cl:format cl:nil "# response~%int32[] pruned ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PruneFrontiers-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pruned) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PruneFrontiers-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PruneFrontiers-response
    (cl:cons ':pruned (pruned msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PruneFrontiers)))
  'PruneFrontiers-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PruneFrontiers)))
  'PruneFrontiers-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PruneFrontiers)))
  "Returns string type for a service object of type '<PruneFrontiers>"
  "ssl_frontier_selection/PruneFrontiers")