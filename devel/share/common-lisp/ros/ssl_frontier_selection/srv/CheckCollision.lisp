; Auto-generated. Do not edit!


(cl:in-package ssl_frontier_selection-srv)


;//! \htmlinclude CheckCollision-request.msg.html

(cl:defclass <CheckCollision-request> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (end
    :reader end
    :initarg :end
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass CheckCollision-request (<CheckCollision-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckCollision-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckCollision-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssl_frontier_selection-srv:<CheckCollision-request> is deprecated: use ssl_frontier_selection-srv:CheckCollision-request instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <CheckCollision-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_frontier_selection-srv:start-val is deprecated.  Use ssl_frontier_selection-srv:start instead.")
  (start m))

(cl:ensure-generic-function 'end-val :lambda-list '(m))
(cl:defmethod end-val ((m <CheckCollision-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_frontier_selection-srv:end-val is deprecated.  Use ssl_frontier_selection-srv:end instead.")
  (end m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckCollision-request>) ostream)
  "Serializes a message object of type '<CheckCollision-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckCollision-request>) istream)
  "Deserializes a message object of type '<CheckCollision-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckCollision-request>)))
  "Returns string type for a service object of type '<CheckCollision-request>"
  "ssl_frontier_selection/CheckCollisionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckCollision-request)))
  "Returns string type for a service object of type 'CheckCollision-request"
  "ssl_frontier_selection/CheckCollisionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckCollision-request>)))
  "Returns md5sum for a message object of type '<CheckCollision-request>"
  "c92144d75546ef11cae2fac438240e38")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckCollision-request)))
  "Returns md5sum for a message object of type 'CheckCollision-request"
  "c92144d75546ef11cae2fac438240e38")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckCollision-request>)))
  "Returns full string definition for message of type '<CheckCollision-request>"
  (cl:format cl:nil "# request~%geometry_msgs/PoseStamped start~%geometry_msgs/PoseStamped end~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckCollision-request)))
  "Returns full string definition for message of type 'CheckCollision-request"
  (cl:format cl:nil "# request~%geometry_msgs/PoseStamped start~%geometry_msgs/PoseStamped end~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckCollision-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckCollision-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckCollision-request
    (cl:cons ':start (start msg))
    (cl:cons ':end (end msg))
))
;//! \htmlinclude CheckCollision-response.msg.html

(cl:defclass <CheckCollision-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CheckCollision-response (<CheckCollision-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckCollision-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckCollision-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ssl_frontier_selection-srv:<CheckCollision-response> is deprecated: use ssl_frontier_selection-srv:CheckCollision-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CheckCollision-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ssl_frontier_selection-srv:success-val is deprecated.  Use ssl_frontier_selection-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckCollision-response>) ostream)
  "Serializes a message object of type '<CheckCollision-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckCollision-response>) istream)
  "Deserializes a message object of type '<CheckCollision-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckCollision-response>)))
  "Returns string type for a service object of type '<CheckCollision-response>"
  "ssl_frontier_selection/CheckCollisionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckCollision-response)))
  "Returns string type for a service object of type 'CheckCollision-response"
  "ssl_frontier_selection/CheckCollisionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckCollision-response>)))
  "Returns md5sum for a message object of type '<CheckCollision-response>"
  "c92144d75546ef11cae2fac438240e38")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckCollision-response)))
  "Returns md5sum for a message object of type 'CheckCollision-response"
  "c92144d75546ef11cae2fac438240e38")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckCollision-response>)))
  "Returns full string definition for message of type '<CheckCollision-response>"
  (cl:format cl:nil "# response~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckCollision-response)))
  "Returns full string definition for message of type 'CheckCollision-response"
  (cl:format cl:nil "# response~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckCollision-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckCollision-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckCollision-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CheckCollision)))
  'CheckCollision-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CheckCollision)))
  'CheckCollision-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckCollision)))
  "Returns string type for a service object of type '<CheckCollision>"
  "ssl_frontier_selection/CheckCollision")