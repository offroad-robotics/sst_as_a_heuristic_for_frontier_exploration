;; Auto-generated. Do not edit!


(when (boundp 'microstrain_mips::SetSensorVehicleFrameTrans)
  (if (not (find-package "MICROSTRAIN_MIPS"))
    (make-package "MICROSTRAIN_MIPS"))
  (shadow 'SetSensorVehicleFrameTrans (find-package "MICROSTRAIN_MIPS")))
(unless (find-package "MICROSTRAIN_MIPS::SETSENSORVEHICLEFRAMETRANS")
  (make-package "MICROSTRAIN_MIPS::SETSENSORVEHICLEFRAMETRANS"))
(unless (find-package "MICROSTRAIN_MIPS::SETSENSORVEHICLEFRAMETRANSREQUEST")
  (make-package "MICROSTRAIN_MIPS::SETSENSORVEHICLEFRAMETRANSREQUEST"))
(unless (find-package "MICROSTRAIN_MIPS::SETSENSORVEHICLEFRAMETRANSRESPONSE")
  (make-package "MICROSTRAIN_MIPS::SETSENSORVEHICLEFRAMETRANSRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass microstrain_mips::SetSensorVehicleFrameTransRequest
  :super ros::object
  :slots (_angle ))

(defmethod microstrain_mips::SetSensorVehicleFrameTransRequest
  (:init
   (&key
    ((:angle __angle) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _angle __angle)
   self)
  (:angle
   (&rest __angle)
   (if (keywordp (car __angle))
       (send* _angle __angle)
     (progn
       (if __angle (setq _angle (car __angle)))
       _angle)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _angle
    (send _angle :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _angle
       (send _angle :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _angle
     (send _angle :deserialize buf ptr-) (incf ptr- (send _angle :serialization-length))
   ;;
   self)
  )

(defclass microstrain_mips::SetSensorVehicleFrameTransResponse
  :super ros::object
  :slots (_success ))

(defmethod microstrain_mips::SetSensorVehicleFrameTransResponse
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

(defclass microstrain_mips::SetSensorVehicleFrameTrans
  :super ros::object
  :slots ())

(setf (get microstrain_mips::SetSensorVehicleFrameTrans :md5sum-) "dae0af6e9e855f125599090c94e6955e")
(setf (get microstrain_mips::SetSensorVehicleFrameTrans :datatype-) "microstrain_mips/SetSensorVehicleFrameTrans")
(setf (get microstrain_mips::SetSensorVehicleFrameTrans :request) microstrain_mips::SetSensorVehicleFrameTransRequest)
(setf (get microstrain_mips::SetSensorVehicleFrameTrans :response) microstrain_mips::SetSensorVehicleFrameTransResponse)

(defmethod microstrain_mips::SetSensorVehicleFrameTransRequest
  (:response () (instance microstrain_mips::SetSensorVehicleFrameTransResponse :init)))

(setf (get microstrain_mips::SetSensorVehicleFrameTransRequest :md5sum-) "dae0af6e9e855f125599090c94e6955e")
(setf (get microstrain_mips::SetSensorVehicleFrameTransRequest :datatype-) "microstrain_mips/SetSensorVehicleFrameTransRequest")
(setf (get microstrain_mips::SetSensorVehicleFrameTransRequest :definition-)
      "geometry_msgs/Vector3 angle

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

(setf (get microstrain_mips::SetSensorVehicleFrameTransResponse :md5sum-) "dae0af6e9e855f125599090c94e6955e")
(setf (get microstrain_mips::SetSensorVehicleFrameTransResponse :datatype-) "microstrain_mips/SetSensorVehicleFrameTransResponse")
(setf (get microstrain_mips::SetSensorVehicleFrameTransResponse :definition-)
      "geometry_msgs/Vector3 angle

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



(provide :microstrain_mips/SetSensorVehicleFrameTrans "dae0af6e9e855f125599090c94e6955e")


