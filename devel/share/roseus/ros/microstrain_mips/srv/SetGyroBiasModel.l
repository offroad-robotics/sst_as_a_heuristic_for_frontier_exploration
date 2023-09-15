;; Auto-generated. Do not edit!


(when (boundp 'microstrain_mips::SetGyroBiasModel)
  (if (not (find-package "MICROSTRAIN_MIPS"))
    (make-package "MICROSTRAIN_MIPS"))
  (shadow 'SetGyroBiasModel (find-package "MICROSTRAIN_MIPS")))
(unless (find-package "MICROSTRAIN_MIPS::SETGYROBIASMODEL")
  (make-package "MICROSTRAIN_MIPS::SETGYROBIASMODEL"))
(unless (find-package "MICROSTRAIN_MIPS::SETGYROBIASMODELREQUEST")
  (make-package "MICROSTRAIN_MIPS::SETGYROBIASMODELREQUEST"))
(unless (find-package "MICROSTRAIN_MIPS::SETGYROBIASMODELRESPONSE")
  (make-package "MICROSTRAIN_MIPS::SETGYROBIASMODELRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass microstrain_mips::SetGyroBiasModelRequest
  :super ros::object
  :slots (_noise_vector _beta_vector ))

(defmethod microstrain_mips::SetGyroBiasModelRequest
  (:init
   (&key
    ((:noise_vector __noise_vector) (instance geometry_msgs::Vector3 :init))
    ((:beta_vector __beta_vector) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _noise_vector __noise_vector)
   (setq _beta_vector __beta_vector)
   self)
  (:noise_vector
   (&rest __noise_vector)
   (if (keywordp (car __noise_vector))
       (send* _noise_vector __noise_vector)
     (progn
       (if __noise_vector (setq _noise_vector (car __noise_vector)))
       _noise_vector)))
  (:beta_vector
   (&rest __beta_vector)
   (if (keywordp (car __beta_vector))
       (send* _beta_vector __beta_vector)
     (progn
       (if __beta_vector (setq _beta_vector (car __beta_vector)))
       _beta_vector)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _noise_vector
    (send _noise_vector :serialization-length)
    ;; geometry_msgs/Vector3 _beta_vector
    (send _beta_vector :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _noise_vector
       (send _noise_vector :serialize s)
     ;; geometry_msgs/Vector3 _beta_vector
       (send _beta_vector :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _noise_vector
     (send _noise_vector :deserialize buf ptr-) (incf ptr- (send _noise_vector :serialization-length))
   ;; geometry_msgs/Vector3 _beta_vector
     (send _beta_vector :deserialize buf ptr-) (incf ptr- (send _beta_vector :serialization-length))
   ;;
   self)
  )

(defclass microstrain_mips::SetGyroBiasModelResponse
  :super ros::object
  :slots (_success ))

(defmethod microstrain_mips::SetGyroBiasModelResponse
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

(defclass microstrain_mips::SetGyroBiasModel
  :super ros::object
  :slots ())

(setf (get microstrain_mips::SetGyroBiasModel :md5sum-) "f3cdd18c97add875be98974ab1d992b9")
(setf (get microstrain_mips::SetGyroBiasModel :datatype-) "microstrain_mips/SetGyroBiasModel")
(setf (get microstrain_mips::SetGyroBiasModel :request) microstrain_mips::SetGyroBiasModelRequest)
(setf (get microstrain_mips::SetGyroBiasModel :response) microstrain_mips::SetGyroBiasModelResponse)

(defmethod microstrain_mips::SetGyroBiasModelRequest
  (:response () (instance microstrain_mips::SetGyroBiasModelResponse :init)))

(setf (get microstrain_mips::SetGyroBiasModelRequest :md5sum-) "f3cdd18c97add875be98974ab1d992b9")
(setf (get microstrain_mips::SetGyroBiasModelRequest :datatype-) "microstrain_mips/SetGyroBiasModelRequest")
(setf (get microstrain_mips::SetGyroBiasModelRequest :definition-)
      "geometry_msgs/Vector3 noise_vector
geometry_msgs/Vector3 beta_vector

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

(setf (get microstrain_mips::SetGyroBiasModelResponse :md5sum-) "f3cdd18c97add875be98974ab1d992b9")
(setf (get microstrain_mips::SetGyroBiasModelResponse :datatype-) "microstrain_mips/SetGyroBiasModelResponse")
(setf (get microstrain_mips::SetGyroBiasModelResponse :definition-)
      "geometry_msgs/Vector3 noise_vector
geometry_msgs/Vector3 beta_vector

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



(provide :microstrain_mips/SetGyroBiasModel "f3cdd18c97add875be98974ab1d992b9")


