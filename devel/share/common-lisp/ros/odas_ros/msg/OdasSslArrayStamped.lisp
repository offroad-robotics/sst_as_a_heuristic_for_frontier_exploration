; Auto-generated. Do not edit!


(cl:in-package odas_ros-msg)


;//! \htmlinclude OdasSslArrayStamped.msg.html

(cl:defclass <OdasSslArrayStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sources
    :reader sources
    :initarg :sources
    :type (cl:vector odas_ros-msg:OdasSsl)
   :initform (cl:make-array 0 :element-type 'odas_ros-msg:OdasSsl :initial-element (cl:make-instance 'odas_ros-msg:OdasSsl))))
)

(cl:defclass OdasSslArrayStamped (<OdasSslArrayStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OdasSslArrayStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OdasSslArrayStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name odas_ros-msg:<OdasSslArrayStamped> is deprecated: use odas_ros-msg:OdasSslArrayStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <OdasSslArrayStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader odas_ros-msg:header-val is deprecated.  Use odas_ros-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sources-val :lambda-list '(m))
(cl:defmethod sources-val ((m <OdasSslArrayStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader odas_ros-msg:sources-val is deprecated.  Use odas_ros-msg:sources instead.")
  (sources m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OdasSslArrayStamped>) ostream)
  "Serializes a message object of type '<OdasSslArrayStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sources))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sources))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OdasSslArrayStamped>) istream)
  "Deserializes a message object of type '<OdasSslArrayStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sources) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sources)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'odas_ros-msg:OdasSsl))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OdasSslArrayStamped>)))
  "Returns string type for a message object of type '<OdasSslArrayStamped>"
  "odas_ros/OdasSslArrayStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OdasSslArrayStamped)))
  "Returns string type for a message object of type 'OdasSslArrayStamped"
  "odas_ros/OdasSslArrayStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OdasSslArrayStamped>)))
  "Returns md5sum for a message object of type '<OdasSslArrayStamped>"
  "356f8a800528bac6e1bfe4fc7310b94b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OdasSslArrayStamped)))
  "Returns md5sum for a message object of type 'OdasSslArrayStamped"
  "356f8a800528bac6e1bfe4fc7310b94b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OdasSslArrayStamped>)))
  "Returns full string definition for message of type '<OdasSslArrayStamped>"
  (cl:format cl:nil "Header header~%odas_ros/OdasSsl[] sources~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: odas_ros/OdasSsl~%float64 x~%float64 y~%float64 z~%float64 E~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OdasSslArrayStamped)))
  "Returns full string definition for message of type 'OdasSslArrayStamped"
  (cl:format cl:nil "Header header~%odas_ros/OdasSsl[] sources~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: odas_ros/OdasSsl~%float64 x~%float64 y~%float64 z~%float64 E~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OdasSslArrayStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sources) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OdasSslArrayStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'OdasSslArrayStamped
    (cl:cons ':header (header msg))
    (cl:cons ':sources (sources msg))
))
