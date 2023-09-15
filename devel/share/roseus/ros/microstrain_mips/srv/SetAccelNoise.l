;; Auto-generated. Do not edit!


(when (boundp 'microstrain_mips::SetAccelNoise)
  (if (not (find-package "MICROSTRAIN_MIPS"))
    (make-package "MICROSTRAIN_MIPS"))
  (shadow 'SetAccelNoise (find-package "MICROSTRAIN_MIPS")))
(unless (find-package "MICROSTRAIN_MIPS::SETACCELNOISE")
  (make-package "MICROSTRAIN_MIPS::SETACCELNOISE"))
(unless (find-package "MICROSTRAIN_MIPS::SETACCELNOISEREQUEST")
  (make-package "MICROSTRAIN_MIPS::SETACCELNOISEREQUEST"))
(unless (find-package "MICROSTRAIN_MIPS::SETACCELNOISERESPONSE")
  (make-package "MICROSTRAIN_MIPS::SETACCELNOISERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass microstrain_mips::SetAccelNoiseRequest
  :super ros::object
  :slots (_noise ))

(defmethod microstrain_mips::SetAccelNoiseRequest
  (:init
   (&key
    ((:noise __noise) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _noise __noise)
   self)
  (:noise
   (&rest __noise)
   (if (keywordp (car __noise))
       (send* _noise __noise)
     (progn
       (if __noise (setq _noise (car __noise)))
       _noise)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _noise
    (send _noise :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _noise
       (send _noise :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _noise
     (send _noise :deserialize buf ptr-) (incf ptr- (send _noise :serialization-length))
   ;;
   self)
  )

(defclass microstrain_mips::SetAccelNoiseResponse
  :super ros::object
  :slots (_success ))

(defmethod microstrain_mips::SetAccelNoiseResponse
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

(defclass microstrain_mips::SetAccelNoise
  :super ros::object
  :slots ())

(setf (get microstrain_mips::SetAccelNoise :md5sum-) "6a73c0e939ba0cee17d40a2e3a5f667f")
(setf (get microstrain_mips::SetAccelNoise :datatype-) "microstrain_mips/SetAccelNoise")
(setf (get microstrain_mips::SetAccelNoise :request) microstrain_mips::SetAccelNoiseRequest)
(setf (get microstrain_mips::SetAccelNoise :response) microstrain_mips::SetAccelNoiseResponse)

(defmethod microstrain_mips::SetAccelNoiseRequest
  (:response () (instance microstrain_mips::SetAccelNoiseResponse :init)))

(setf (get microstrain_mips::SetAccelNoiseRequest :md5sum-) "6a73c0e939ba0cee17d40a2e3a5f667f")
(setf (get microstrain_mips::SetAccelNoiseRequest :datatype-) "microstrain_mips/SetAccelNoiseRequest")
(setf (get microstrain_mips::SetAccelNoiseRequest :definition-)
      "geometry_msgs/Vector3 noise

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
bool success

")

(setf (get microstrain_mips::SetAccelNoiseResponse :md5sum-) "6a73c0e939ba0cee17d40a2e3a5f667f")
(setf (get microstrain_mips::SetAccelNoiseResponse :datatype-) "microstrain_mips/SetAccelNoiseResponse")
(setf (get microstrain_mips::SetAccelNoiseResponse :definition-)
      "geometry_msgs/Vector3 noise

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
bool success

")



(provide :microstrain_mips/SetAccelNoise "6a73c0e939ba0cee17d40a2e3a5f667f")


