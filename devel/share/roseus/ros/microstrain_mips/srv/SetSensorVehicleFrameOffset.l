;; Auto-generated. Do not edit!


(when (boundp 'microstrain_mips::SetSensorVehicleFrameOffset)
  (if (not (find-package "MICROSTRAIN_MIPS"))
    (make-package "MICROSTRAIN_MIPS"))
  (shadow 'SetSensorVehicleFrameOffset (find-package "MICROSTRAIN_MIPS")))
(unless (find-package "MICROSTRAIN_MIPS::SETSENSORVEHICLEFRAMEOFFSET")
  (make-package "MICROSTRAIN_MIPS::SETSENSORVEHICLEFRAMEOFFSET"))
(unless (find-package "MICROSTRAIN_MIPS::SETSENSORVEHICLEFRAMEOFFSETREQUEST")
  (make-package "MICROSTRAIN_MIPS::SETSENSORVEHICLEFRAMEOFFSETREQUEST"))
(unless (find-package "MICROSTRAIN_MIPS::SETSENSORVEHICLEFRAMEOFFSETRESPONSE")
  (make-package "MICROSTRAIN_MIPS::SETSENSORVEHICLEFRAMEOFFSETRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass microstrain_mips::SetSensorVehicleFrameOffsetRequest
  :super ros::object
  :slots (_offset ))

(defmethod microstrain_mips::SetSensorVehicleFrameOffsetRequest
  (:init
   (&key
    ((:offset __offset) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _offset __offset)
   self)
  (:offset
   (&rest __offset)
   (if (keywordp (car __offset))
       (send* _offset __offset)
     (progn
       (if __offset (setq _offset (car __offset)))
       _offset)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _offset
    (send _offset :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _offset
       (send _offset :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _offset
     (send _offset :deserialize buf ptr-) (incf ptr- (send _offset :serialization-length))
   ;;
   self)
  )

(defclass microstrain_mips::SetSensorVehicleFrameOffsetResponse
  :super ros::object
  :slots (_success ))

(defmethod microstrain_mips::SetSensorVehicleFrameOffsetResponse
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

(defclass microstrain_mips::SetSensorVehicleFrameOffset
  :super ros::object
  :slots ())

(setf (get microstrain_mips::SetSensorVehicleFrameOffset :md5sum-) "17d27ff1259ce523baf9de57b7c37e18")
(setf (get microstrain_mips::SetSensorVehicleFrameOffset :datatype-) "microstrain_mips/SetSensorVehicleFrameOffset")
(setf (get microstrain_mips::SetSensorVehicleFrameOffset :request) microstrain_mips::SetSensorVehicleFrameOffsetRequest)
(setf (get microstrain_mips::SetSensorVehicleFrameOffset :response) microstrain_mips::SetSensorVehicleFrameOffsetResponse)

(defmethod microstrain_mips::SetSensorVehicleFrameOffsetRequest
  (:response () (instance microstrain_mips::SetSensorVehicleFrameOffsetResponse :init)))

(setf (get microstrain_mips::SetSensorVehicleFrameOffsetRequest :md5sum-) "17d27ff1259ce523baf9de57b7c37e18")
(setf (get microstrain_mips::SetSensorVehicleFrameOffsetRequest :datatype-) "microstrain_mips/SetSensorVehicleFrameOffsetRequest")
(setf (get microstrain_mips::SetSensorVehicleFrameOffsetRequest :definition-)
      "geometry_msgs/Vector3 offset

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

(setf (get microstrain_mips::SetSensorVehicleFrameOffsetResponse :md5sum-) "17d27ff1259ce523baf9de57b7c37e18")
(setf (get microstrain_mips::SetSensorVehicleFrameOffsetResponse :datatype-) "microstrain_mips/SetSensorVehicleFrameOffsetResponse")
(setf (get microstrain_mips::SetSensorVehicleFrameOffsetResponse :definition-)
      "geometry_msgs/Vector3 offset

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



(provide :microstrain_mips/SetSensorVehicleFrameOffset "17d27ff1259ce523baf9de57b7c37e18")


