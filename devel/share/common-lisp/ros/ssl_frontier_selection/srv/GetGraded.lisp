; Auto-generated. Do not edit!


(cl:in-package ssl_frontier_selection-srv)


;//! \htmlinclude GetGraded-request.msg.html

(cl:defclass <GetGraded-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetGraded-request (<GetGraded-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGraded-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGraded-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssl_frontier_selection-srv:<GetGraded-request> is deprecated: use ssl_frontier_selection-srv:GetGraded-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGraded-request>) ostream)
  "Serializes a message object of type '<GetGraded-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGraded-request>) istream)
  "Deserializes a message object of type '<GetGraded-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGraded-request>)))
  "Returns string type for a service object of type '<GetGraded-request>"
  "ssl_frontier_selection/GetGradedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGraded-request)))
  "Returns string type for a service object of type 'GetGraded-request"
  "ssl_frontier_selection/GetGradedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGraded-request>)))
  "Returns md5sum for a message object of type '<GetGraded-request>"
  "a4cd76d4eb5970ff195c8d52aacd39f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGraded-request)))
  "Returns md5sum for a message object of type 'GetGraded-request"
  "a4cd76d4eb5970ff195c8d52aacd39f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGraded-request>)))
  "Returns full string definition for message of type '<GetGraded-request>"
  (cl:format cl:nil "# request~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGraded-request)))
  "Returns full string definition for message of type 'GetGraded-request"
  (cl:format cl:nil "# request~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGraded-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGraded-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGraded-request
))
;//! \htmlinclude GetGraded-response.msg.html

(cl:defclass <GetGraded-response> (roslisp-msg-protocol:ros-message)
  ((ids
    :reader ids
    :initarg :ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (points
    :reader points
    :initarg :points
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass GetGraded-response (<GetGraded-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGraded-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGraded-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssl_frontier_selection-srv:<GetGraded-response> is deprecated: use ssl_frontier_selection-srv:GetGraded-response instead.")))

(cl:ensure-generic-function 'ids-val :lambda-list '(m))
(cl:defmethod ids-val ((m <GetGraded-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_frontier_selection-srv:ids-val is deprecated.  Use ssl_frontier_selection-srv:ids instead.")
  (ids m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <GetGraded-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_frontier_selection-srv:points-val is deprecated.  Use ssl_frontier_selection-srv:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGraded-response>) ostream)
  "Serializes a message object of type '<GetGraded-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ids))))
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
   (cl:slot-value msg 'ids))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGraded-response>) istream)
  "Deserializes a message object of type '<GetGraded-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGraded-response>)))
  "Returns string type for a service object of type '<GetGraded-response>"
  "ssl_frontier_selection/GetGradedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGraded-response)))
  "Returns string type for a service object of type 'GetGraded-response"
  "ssl_frontier_selection/GetGradedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGraded-response>)))
  "Returns md5sum for a message object of type '<GetGraded-response>"
  "a4cd76d4eb5970ff195c8d52aacd39f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGraded-response)))
  "Returns md5sum for a message object of type 'GetGraded-response"
  "a4cd76d4eb5970ff195c8d52aacd39f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGraded-response>)))
  "Returns full string definition for message of type '<GetGraded-response>"
  (cl:format cl:nil "# response~%int32[] ids~%geometry_msgs/Point[] points~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGraded-response)))
  "Returns full string definition for message of type 'GetGraded-response"
  (cl:format cl:nil "# response~%int32[] ids~%geometry_msgs/Point[] points~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGraded-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGraded-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGraded-response
    (cl:cons ':ids (ids msg))
    (cl:cons ':points (points msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetGraded)))
  'GetGraded-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetGraded)))
  'GetGraded-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGraded)))
  "Returns string type for a service object of type '<GetGraded>"
  "ssl_frontier_selection/GetGraded")