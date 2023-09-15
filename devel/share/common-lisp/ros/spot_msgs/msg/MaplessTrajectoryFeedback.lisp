; Auto-generated. Do not edit!


(cl:in-package spot_msgs-msg)


;//! \htmlinclude MaplessTrajectoryFeedback.msg.html

(cl:defclass <MaplessTrajectoryFeedback> (roslisp-msg-protocol:ros-message)
  ((error
    :reader error
    :initarg :error
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (feedback
    :reader feedback
    :initarg :feedback
    :type cl:string
    :initform "")
   (current_attempt
    :reader current_attempt
    :initarg :current_attempt
    :type cl:integer
    :initform 0))
)

(cl:defclass MaplessTrajectoryFeedback (<MaplessTrajectoryFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MaplessTrajectoryFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MaplessTrajectoryFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spot_msgs-msg:<MaplessTrajectoryFeedback> is deprecated: use spot_msgs-msg:MaplessTrajectoryFeedback instead.")))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <MaplessTrajectoryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_msgs-msg:error-val is deprecated.  Use spot_msgs-msg:error instead.")
  (error m))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <MaplessTrajectoryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_msgs-msg:feedback-val is deprecated.  Use spot_msgs-msg:feedback instead.")
  (feedback m))

(cl:ensure-generic-function 'current_attempt-val :lambda-list '(m))
(cl:defmethod current_attempt-val ((m <MaplessTrajectoryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_msgs-msg:current_attempt-val is deprecated.  Use spot_msgs-msg:current_attempt instead.")
  (current_attempt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MaplessTrajectoryFeedback>) ostream)
  "Serializes a message object of type '<MaplessTrajectoryFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'feedback))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'feedback))
  (cl:let* ((signed (cl:slot-value msg 'current_attempt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MaplessTrajectoryFeedback>) istream)
  "Deserializes a message object of type '<MaplessTrajectoryFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'feedback) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'feedback) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_attempt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MaplessTrajectoryFeedback>)))
  "Returns string type for a message object of type '<MaplessTrajectoryFeedback>"
  "spot_msgs/MaplessTrajectoryFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MaplessTrajectoryFeedback)))
  "Returns string type for a message object of type 'MaplessTrajectoryFeedback"
  "spot_msgs/MaplessTrajectoryFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MaplessTrajectoryFeedback>)))
  "Returns md5sum for a message object of type '<MaplessTrajectoryFeedback>"
  "98751604b46a4e51af4fd37d5b14d6e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MaplessTrajectoryFeedback)))
  "Returns md5sum for a message object of type 'MaplessTrajectoryFeedback"
  "98751604b46a4e51af4fd37d5b14d6e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MaplessTrajectoryFeedback>)))
  "Returns full string definition for message of type '<MaplessTrajectoryFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback~%geometry_msgs/Pose error~%string feedback~%int32 current_attempt~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MaplessTrajectoryFeedback)))
  "Returns full string definition for message of type 'MaplessTrajectoryFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback~%geometry_msgs/Pose error~%string feedback~%int32 current_attempt~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MaplessTrajectoryFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error))
     4 (cl:length (cl:slot-value msg 'feedback))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MaplessTrajectoryFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'MaplessTrajectoryFeedback
    (cl:cons ':error (error msg))
    (cl:cons ':feedback (feedback msg))
    (cl:cons ':current_attempt (current_attempt msg))
))
