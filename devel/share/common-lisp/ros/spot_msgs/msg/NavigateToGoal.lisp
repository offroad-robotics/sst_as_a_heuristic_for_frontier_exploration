; Auto-generated. Do not edit!


(cl:in-package spot_msgs-msg)


;//! \htmlinclude NavigateToGoal.msg.html

(cl:defclass <NavigateToGoal> (roslisp-msg-protocol:ros-message)
  ((upload_path
    :reader upload_path
    :initarg :upload_path
    :type cl:string
    :initform "")
   (navigate_to
    :reader navigate_to
    :initarg :navigate_to
    :type cl:string
    :initform "")
   (initial_localization_fiducial
    :reader initial_localization_fiducial
    :initarg :initial_localization_fiducial
    :type cl:boolean
    :initform cl:nil)
   (initial_localization_waypoint
    :reader initial_localization_waypoint
    :initarg :initial_localization_waypoint
    :type cl:string
    :initform ""))
)

(cl:defclass NavigateToGoal (<NavigateToGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigateToGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigateToGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spot_msgs-msg:<NavigateToGoal> is deprecated: use spot_msgs-msg:NavigateToGoal instead.")))

(cl:ensure-generic-function 'upload_path-val :lambda-list '(m))
(cl:defmethod upload_path-val ((m <NavigateToGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_msgs-msg:upload_path-val is deprecated.  Use spot_msgs-msg:upload_path instead.")
  (upload_path m))

(cl:ensure-generic-function 'navigate_to-val :lambda-list '(m))
(cl:defmethod navigate_to-val ((m <NavigateToGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_msgs-msg:navigate_to-val is deprecated.  Use spot_msgs-msg:navigate_to instead.")
  (navigate_to m))

(cl:ensure-generic-function 'initial_localization_fiducial-val :lambda-list '(m))
(cl:defmethod initial_localization_fiducial-val ((m <NavigateToGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_msgs-msg:initial_localization_fiducial-val is deprecated.  Use spot_msgs-msg:initial_localization_fiducial instead.")
  (initial_localization_fiducial m))

(cl:ensure-generic-function 'initial_localization_waypoint-val :lambda-list '(m))
(cl:defmethod initial_localization_waypoint-val ((m <NavigateToGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_msgs-msg:initial_localization_waypoint-val is deprecated.  Use spot_msgs-msg:initial_localization_waypoint instead.")
  (initial_localization_waypoint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigateToGoal>) ostream)
  "Serializes a message object of type '<NavigateToGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'upload_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'upload_path))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'navigate_to))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'navigate_to))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'initial_localization_fiducial) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'initial_localization_waypoint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'initial_localization_waypoint))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigateToGoal>) istream)
  "Deserializes a message object of type '<NavigateToGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'upload_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'upload_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'navigate_to) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'navigate_to) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'initial_localization_fiducial) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'initial_localization_waypoint) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'initial_localization_waypoint) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigateToGoal>)))
  "Returns string type for a message object of type '<NavigateToGoal>"
  "spot_msgs/NavigateToGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigateToGoal)))
  "Returns string type for a message object of type 'NavigateToGoal"
  "spot_msgs/NavigateToGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigateToGoal>)))
  "Returns md5sum for a message object of type '<NavigateToGoal>"
  "f9af434c1c55a1da6434e77de4087aaf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigateToGoal)))
  "Returns md5sum for a message object of type 'NavigateToGoal"
  "f9af434c1c55a1da6434e77de4087aaf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigateToGoal>)))
  "Returns full string definition for message of type '<NavigateToGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string upload_path # Absolute path to map_directory, which is downloaded from tablet controller~%string navigate_to # Waypoint id string for where to go~%bool initial_localization_fiducial   # Tells the initializer whether to use fiducials~%string initial_localization_waypoint # Waypoint id to trigger localization ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigateToGoal)))
  "Returns full string definition for message of type 'NavigateToGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string upload_path # Absolute path to map_directory, which is downloaded from tablet controller~%string navigate_to # Waypoint id string for where to go~%bool initial_localization_fiducial   # Tells the initializer whether to use fiducials~%string initial_localization_waypoint # Waypoint id to trigger localization ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigateToGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'upload_path))
     4 (cl:length (cl:slot-value msg 'navigate_to))
     1
     4 (cl:length (cl:slot-value msg 'initial_localization_waypoint))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigateToGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigateToGoal
    (cl:cons ':upload_path (upload_path msg))
    (cl:cons ':navigate_to (navigate_to msg))
    (cl:cons ':initial_localization_fiducial (initial_localization_fiducial msg))
    (cl:cons ':initial_localization_waypoint (initial_localization_waypoint msg))
))
