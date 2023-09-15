; Auto-generated. Do not edit!


(cl:in-package spot_trajectory_planner-srv)


;//! \htmlinclude AddSavePoint-request.msg.html

(cl:defclass <AddSavePoint-request> (roslisp-msg-protocol:ros-message)
  ((target_pose
    :reader target_pose
    :initarg :target_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (parent_id
    :reader parent_id
    :initarg :parent_id
    :type cl:integer
    :initform 0))
)

(cl:defclass AddSavePoint-request (<AddSavePoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddSavePoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddSavePoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spot_trajectory_planner-srv:<AddSavePoint-request> is deprecated: use spot_trajectory_planner-srv:AddSavePoint-request instead.")))

(cl:ensure-generic-function 'target_pose-val :lambda-list '(m))
(cl:defmethod target_pose-val ((m <AddSavePoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_trajectory_planner-srv:target_pose-val is deprecated.  Use spot_trajectory_planner-srv:target_pose instead.")
  (target_pose m))

(cl:ensure-generic-function 'parent_id-val :lambda-list '(m))
(cl:defmethod parent_id-val ((m <AddSavePoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_trajectory_planner-srv:parent_id-val is deprecated.  Use spot_trajectory_planner-srv:parent_id instead.")
  (parent_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddSavePoint-request>) ostream)
  "Serializes a message object of type '<AddSavePoint-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_pose) ostream)
  (cl:let* ((signed (cl:slot-value msg 'parent_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddSavePoint-request>) istream)
  "Deserializes a message object of type '<AddSavePoint-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_pose) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parent_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddSavePoint-request>)))
  "Returns string type for a service object of type '<AddSavePoint-request>"
  "spot_trajectory_planner/AddSavePointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddSavePoint-request)))
  "Returns string type for a service object of type 'AddSavePoint-request"
  "spot_trajectory_planner/AddSavePointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddSavePoint-request>)))
  "Returns md5sum for a message object of type '<AddSavePoint-request>"
  "330eafeff02cba4993b80f65eadcaaba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddSavePoint-request)))
  "Returns md5sum for a message object of type 'AddSavePoint-request"
  "330eafeff02cba4993b80f65eadcaaba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddSavePoint-request>)))
  "Returns full string definition for message of type '<AddSavePoint-request>"
  (cl:format cl:nil "# request~%geometry_msgs/PoseStamped target_pose~%int32 parent_id~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddSavePoint-request)))
  "Returns full string definition for message of type 'AddSavePoint-request"
  (cl:format cl:nil "# request~%geometry_msgs/PoseStamped target_pose~%int32 parent_id~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddSavePoint-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_pose))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddSavePoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddSavePoint-request
    (cl:cons ':target_pose (target_pose msg))
    (cl:cons ':parent_id (parent_id msg))
))
;//! \htmlinclude AddSavePoint-response.msg.html

(cl:defclass <AddSavePoint-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AddSavePoint-response (<AddSavePoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddSavePoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddSavePoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spot_trajectory_planner-srv:<AddSavePoint-response> is deprecated: use spot_trajectory_planner-srv:AddSavePoint-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AddSavePoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_trajectory_planner-srv:success-val is deprecated.  Use spot_trajectory_planner-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddSavePoint-response>) ostream)
  "Serializes a message object of type '<AddSavePoint-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddSavePoint-response>) istream)
  "Deserializes a message object of type '<AddSavePoint-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddSavePoint-response>)))
  "Returns string type for a service object of type '<AddSavePoint-response>"
  "spot_trajectory_planner/AddSavePointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddSavePoint-response)))
  "Returns string type for a service object of type 'AddSavePoint-response"
  "spot_trajectory_planner/AddSavePointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddSavePoint-response>)))
  "Returns md5sum for a message object of type '<AddSavePoint-response>"
  "330eafeff02cba4993b80f65eadcaaba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddSavePoint-response)))
  "Returns md5sum for a message object of type 'AddSavePoint-response"
  "330eafeff02cba4993b80f65eadcaaba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddSavePoint-response>)))
  "Returns full string definition for message of type '<AddSavePoint-response>"
  (cl:format cl:nil "# response~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddSavePoint-response)))
  "Returns full string definition for message of type 'AddSavePoint-response"
  (cl:format cl:nil "# response~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddSavePoint-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddSavePoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddSavePoint-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddSavePoint)))
  'AddSavePoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddSavePoint)))
  'AddSavePoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddSavePoint)))
  "Returns string type for a service object of type '<AddSavePoint>"
  "spot_trajectory_planner/AddSavePoint")