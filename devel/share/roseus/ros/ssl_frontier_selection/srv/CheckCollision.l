;; Auto-generated. Do not edit!


(when (boundp 'ssl_frontier_selection::CheckCollision)
  (if (not (find-package "SSL_FRONTIER_SELECTION"))
    (make-package "SSL_FRONTIER_SELECTION"))
  (shadow 'CheckCollision (find-package "SSL_FRONTIER_SELECTION")))
(unless (find-package "SSL_FRONTIER_SELECTION::CHECKCOLLISION")
  (make-package "SSL_FRONTIER_SELECTION::CHECKCOLLISION"))
(unless (find-package "SSL_FRONTIER_SELECTION::CHECKCOLLISIONREQUEST")
  (make-package "SSL_FRONTIER_SELECTION::CHECKCOLLISIONREQUEST"))
(unless (find-package "SSL_FRONTIER_SELECTION::CHECKCOLLISIONRESPONSE")
  (make-package "SSL_FRONTIER_SELECTION::CHECKCOLLISIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass ssl_frontier_selection::CheckCollisionRequest
  :super ros::object
  :slots (_start _end ))

(defmethod ssl_frontier_selection::CheckCollisionRequest
  (:init
   (&key
    ((:start __start) (instance geometry_msgs::PoseStamped :init))
    ((:end __end) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _start __start)
   (setq _end __end)
   self)
  (:start
   (&rest __start)
   (if (keywordp (car __start))
       (send* _start __start)
     (progn
       (if __start (setq _start (car __start)))
       _start)))
  (:end
   (&rest __end)
   (if (keywordp (car __end))
       (send* _end __end)
     (progn
       (if __end (setq _end (car __end)))
       _end)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _start
    (send _start :serialization-length)
    ;; geometry_msgs/PoseStamped _end
    (send _end :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _start
       (send _start :serialize s)
     ;; geometry_msgs/PoseStamped _end
       (send _end :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _start
     (send _start :deserialize buf ptr-) (incf ptr- (send _start :serialization-length))
   ;; geometry_msgs/PoseStamped _end
     (send _end :deserialize buf ptr-) (incf ptr- (send _end :serialization-length))
   ;;
   self)
  )

(defclass ssl_frontier_selection::CheckCollisionResponse
  :super ros::object
  :slots (_success ))

(defmethod ssl_frontier_selection::CheckCollisionResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ssl_frontier_selection::CheckCollision
  :super ros::object
  :slots ())

(setf (get ssl_frontier_selection::CheckCollision :md5sum-) "c92144d75546ef11cae2fac438240e38")
(setf (get ssl_frontier_selection::CheckCollision :datatype-) "ssl_frontier_selection/CheckCollision")
(setf (get ssl_frontier_selection::CheckCollision :request) ssl_frontier_selection::CheckCollisionRequest)
(setf (get ssl_frontier_selection::CheckCollision :response) ssl_frontier_selection::CheckCollisionResponse)

(defmethod ssl_frontier_selection::CheckCollisionRequest
  (:response () (instance ssl_frontier_selection::CheckCollisionResponse :init)))

(setf (get ssl_frontier_selection::CheckCollisionRequest :md5sum-) "c92144d75546ef11cae2fac438240e38")
(setf (get ssl_frontier_selection::CheckCollisionRequest :datatype-) "ssl_frontier_selection/CheckCollisionRequest")
(setf (get ssl_frontier_selection::CheckCollisionRequest :definition-)
      "# request
geometry_msgs/PoseStamped start
geometry_msgs/PoseStamped end

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
# response
bool success
")

(setf (get ssl_frontier_selection::CheckCollisionResponse :md5sum-) "c92144d75546ef11cae2fac438240e38")
(setf (get ssl_frontier_selection::CheckCollisionResponse :datatype-) "ssl_frontier_selection/CheckCollisionResponse")
(setf (get ssl_frontier_selection::CheckCollisionResponse :definition-)
      "# request
geometry_msgs/PoseStamped start
geometry_msgs/PoseStamped end

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
# response
bool success
")



(provide :ssl_frontier_selection/CheckCollision "c92144d75546ef11cae2fac438240e38")


