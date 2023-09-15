; Auto-generated. Do not edit!


(cl:in-package spot_trajectory_planner-srv)


;//! \htmlinclude BuildTrajectory-request.msg.html

(cl:defclass <BuildTrajectory-request> (roslisp-msg-protocol:ros-message)
  ((frontier_pose
    :reader frontier_pose
    :initarg :frontier_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (cur_pose
    :reader cur_pose
    :initarg :cur_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass BuildTrajectory-request (<BuildTrajectory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BuildTrajectory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BuildTrajectory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spot_trajectory_planner-srv:<BuildTrajectory-request> is deprecated: use spot_trajectory_planner-srv:BuildTrajectory-request instead.")))

(cl:ensure-generic-function 'frontier_pose-val :lambda-list '(m))
(cl:defmethod frontier_pose-val ((m <BuildTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_trajectory_planner-srv:frontier_pose-val is deprecated.  Use spot_trajectory_planner-srv:frontier_pose instead.")
  (frontier_pose m))

(cl:ensure-generic-function 'cur_pose-val :lambda-list '(m))
(cl:defmethod cur_pose-val ((m <BuildTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_trajectory_planner-srv:cur_pose-val is deprecated.  Use spot_trajectory_planner-srv:cur_pose instead.")
  (cur_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BuildTrajectory-request>) ostream)
  "Serializes a message object of type '<BuildTrajectory-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'frontier_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cur_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BuildTrajectory-request>) istream)
  "Deserializes a message object of type '<BuildTrajectory-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'frontier_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cur_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BuildTrajectory-request>)))
  "Returns string type for a service object of type '<BuildTrajectory-request>"
  "spot_trajectory_planner/BuildTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BuildTrajectory-request)))
  "Returns string type for a service object of type 'BuildTrajectory-request"
  "spot_trajectory_planner/BuildTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BuildTrajectory-request>)))
  "Returns md5sum for a message object of type '<BuildTrajectory-request>"
  "bc7bc67c3c2d0c9de04aea3b481ca509")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BuildTrajectory-request)))
  "Returns md5sum for a message object of type 'BuildTrajectory-request"
  "bc7bc67c3c2d0c9de04aea3b481ca509")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BuildTrajectory-request>)))
  "Returns full string definition for message of type '<BuildTrajectory-request>"
  (cl:format cl:nil "# request~%geometry_msgs/PoseStamped frontier_pose~%geometry_msgs/PoseStamped cur_pose~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BuildTrajectory-request)))
  "Returns full string definition for message of type 'BuildTrajectory-request"
  (cl:format cl:nil "# request~%geometry_msgs/PoseStamped frontier_pose~%geometry_msgs/PoseStamped cur_pose~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BuildTrajectory-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'frontier_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cur_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BuildTrajectory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BuildTrajectory-request
    (cl:cons ':frontier_pose (frontier_pose msg))
    (cl:cons ':cur_pose (cur_pose msg))
))
;//! \htmlinclude BuildTrajectory-response.msg.html

(cl:defclass <BuildTrajectory-response> (roslisp-msg-protocol:ros-message)
  ((frontier_plan
    :reader frontier_plan
    :initarg :frontier_plan
    :type geometry_msgs-msg:PoseArray
    :initform (cl:make-instance 'geometry_msgs-msg:PoseArray))
   (parent_id
    :reader parent_id
    :initarg :parent_id
    :type cl:integer
    :initform 0)
   (node_list
    :reader node_list
    :initarg :node_list
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass BuildTrajectory-response (<BuildTrajectory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BuildTrajectory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BuildTrajectory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spot_trajectory_planner-srv:<BuildTrajectory-response> is deprecated: use spot_trajectory_planner-srv:BuildTrajectory-response instead.")))

(cl:ensure-generic-function 'frontier_plan-val :lambda-list '(m))
(cl:defmethod frontier_plan-val ((m <BuildTrajectory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_trajectory_planner-srv:frontier_plan-val is deprecated.  Use spot_trajectory_planner-srv:frontier_plan instead.")
  (frontier_plan m))

(cl:ensure-generic-function 'parent_id-val :lambda-list '(m))
(cl:defmethod parent_id-val ((m <BuildTrajectory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_trajectory_planner-srv:parent_id-val is deprecated.  Use spot_trajectory_planner-srv:parent_id instead.")
  (parent_id m))

(cl:ensure-generic-function 'node_list-val :lambda-list '(m))
(cl:defmethod node_list-val ((m <BuildTrajectory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_trajectory_planner-srv:node_list-val is deprecated.  Use spot_trajectory_planner-srv:node_list instead.")
  (node_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BuildTrajectory-response>) ostream)
  "Serializes a message object of type '<BuildTrajectory-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'frontier_plan) ostream)
  (cl:let* ((signed (cl:slot-value msg 'parent_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'node_list))))
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
   (cl:slot-value msg 'node_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BuildTrajectory-response>) istream)
  "Deserializes a message object of type '<BuildTrajectory-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'frontier_plan) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parent_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'node_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'node_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BuildTrajectory-response>)))
  "Returns string type for a service object of type '<BuildTrajectory-response>"
  "spot_trajectory_planner/BuildTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BuildTrajectory-response)))
  "Returns string type for a service object of type 'BuildTrajectory-response"
  "spot_trajectory_planner/BuildTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BuildTrajectory-response>)))
  "Returns md5sum for a message object of type '<BuildTrajectory-response>"
  "bc7bc67c3c2d0c9de04aea3b481ca509")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BuildTrajectory-response)))
  "Returns md5sum for a message object of type 'BuildTrajectory-response"
  "bc7bc67c3c2d0c9de04aea3b481ca509")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BuildTrajectory-response>)))
  "Returns full string definition for message of type '<BuildTrajectory-response>"
  (cl:format cl:nil "# response~%geometry_msgs/PoseArray frontier_plan~%int32 parent_id # used to identify which node is the parent of the frontier~%int32[] node_list~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BuildTrajectory-response)))
  "Returns full string definition for message of type 'BuildTrajectory-response"
  (cl:format cl:nil "# response~%geometry_msgs/PoseArray frontier_plan~%int32 parent_id # used to identify which node is the parent of the frontier~%int32[] node_list~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BuildTrajectory-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'frontier_plan))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'node_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BuildTrajectory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BuildTrajectory-response
    (cl:cons ':frontier_plan (frontier_plan msg))
    (cl:cons ':parent_id (parent_id msg))
    (cl:cons ':node_list (node_list msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BuildTrajectory)))
  'BuildTrajectory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BuildTrajectory)))
  'BuildTrajectory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BuildTrajectory)))
  "Returns string type for a service object of type '<BuildTrajectory>"
  "spot_trajectory_planner/BuildTrajectory")