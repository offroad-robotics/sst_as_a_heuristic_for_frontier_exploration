; Auto-generated. Do not edit!


(cl:in-package spot_msgs-msg)


;//! \htmlinclude MaplessTrajectoryResult.msg.html

(cl:defclass <MaplessTrajectoryResult> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (attempts
    :reader attempts
    :initarg :attempts
    :type cl:integer
    :initform 0))
)

(cl:defclass MaplessTrajectoryResult (<MaplessTrajectoryResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MaplessTrajectoryResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MaplessTrajectoryResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spot_msgs-msg:<MaplessTrajectoryResult> is deprecated: use spot_msgs-msg:MaplessTrajectoryResult instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <MaplessTrajectoryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_msgs-msg:success-val is deprecated.  Use spot_msgs-msg:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <MaplessTrajectoryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_msgs-msg:message-val is deprecated.  Use spot_msgs-msg:message instead.")
  (message m))

(cl:ensure-generic-function 'attempts-val :lambda-list '(m))
(cl:defmethod attempts-val ((m <MaplessTrajectoryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_msgs-msg:attempts-val is deprecated.  Use spot_msgs-msg:attempts instead.")
  (attempts m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MaplessTrajectoryResult>) ostream)
  "Serializes a message object of type '<MaplessTrajectoryResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let* ((signed (cl:slot-value msg 'attempts)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MaplessTrajectoryResult>) istream)
  "Deserializes a message object of type '<MaplessTrajectoryResult>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'attempts) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MaplessTrajectoryResult>)))
  "Returns string type for a message object of type '<MaplessTrajectoryResult>"
  "spot_msgs/MaplessTrajectoryResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MaplessTrajectoryResult)))
  "Returns string type for a message object of type 'MaplessTrajectoryResult"
  "spot_msgs/MaplessTrajectoryResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MaplessTrajectoryResult>)))
  "Returns md5sum for a message object of type '<MaplessTrajectoryResult>"
  "72ec539bcc97b6f400ba85e7aa9576ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MaplessTrajectoryResult)))
  "Returns md5sum for a message object of type 'MaplessTrajectoryResult"
  "72ec539bcc97b6f400ba85e7aa9576ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MaplessTrajectoryResult>)))
  "Returns full string definition for message of type '<MaplessTrajectoryResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%bool success~%string message~%int32 attempts~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MaplessTrajectoryResult)))
  "Returns full string definition for message of type 'MaplessTrajectoryResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%bool success~%string message~%int32 attempts~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MaplessTrajectoryResult>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MaplessTrajectoryResult>))
  "Converts a ROS message object to a list"
  (cl:list 'MaplessTrajectoryResult
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':attempts (attempts msg))
))
