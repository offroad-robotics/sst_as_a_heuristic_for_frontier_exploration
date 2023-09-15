;; Auto-generated. Do not edit!


(when (boundp 'microstrain_mips::SetReferencePosition)
  (if (not (find-package "MICROSTRAIN_MIPS"))
    (make-package "MICROSTRAIN_MIPS"))
  (shadow 'SetReferencePosition (find-package "MICROSTRAIN_MIPS")))
(unless (find-package "MICROSTRAIN_MIPS::SETREFERENCEPOSITION")
  (make-package "MICROSTRAIN_MIPS::SETREFERENCEPOSITION"))
(unless (find-package "MICROSTRAIN_MIPS::SETREFERENCEPOSITIONREQUEST")
  (make-package "MICROSTRAIN_MIPS::SETREFERENCEPOSITIONREQUEST"))
(unless (find-package "MICROSTRAIN_MIPS::SETREFERENCEPOSITIONRESPONSE")
  (make-package "MICROSTRAIN_MIPS::SETREFERENCEPOSITIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass microstrain_mips::SetReferencePositionRequest
  :super ros::object
  :slots (_position ))

(defmethod microstrain_mips::SetReferencePositionRequest
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _position __position)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _position
    (send _position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _position
       (send _position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;;
   self)
  )

(defclass microstrain_mips::SetReferencePositionResponse
  :super ros::object
  :slots (_success ))

(defmethod microstrain_mips::SetReferencePositionResponse
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

(defclass microstrain_mips::SetReferencePosition
  :super ros::object
  :slots ())

(setf (get microstrain_mips::SetReferencePosition :md5sum-) "eed8c009a979878261617f53e8264ddc")
(setf (get microstrain_mips::SetReferencePosition :datatype-) "microstrain_mips/SetReferencePosition")
(setf (get microstrain_mips::SetReferencePosition :request) microstrain_mips::SetReferencePositionRequest)
(setf (get microstrain_mips::SetReferencePosition :response) microstrain_mips::SetReferencePositionResponse)

(defmethod microstrain_mips::SetReferencePositionRequest
  (:response () (instance microstrain_mips::SetReferencePositionResponse :init)))

(setf (get microstrain_mips::SetReferencePositionRequest :md5sum-) "eed8c009a979878261617f53e8264ddc")
(setf (get microstrain_mips::SetReferencePositionRequest :datatype-) "microstrain_mips/SetReferencePositionRequest")
(setf (get microstrain_mips::SetReferencePositionRequest :definition-)
      "geometry_msgs/Vector3 position

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

(setf (get microstrain_mips::SetReferencePositionResponse :md5sum-) "eed8c009a979878261617f53e8264ddc")
(setf (get microstrain_mips::SetReferencePositionResponse :datatype-) "microstrain_mips/SetReferencePositionResponse")
(setf (get microstrain_mips::SetReferencePositionResponse :definition-)
      "geometry_msgs/Vector3 position

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



(provide :microstrain_mips/SetReferencePosition "eed8c009a979878261617f53e8264ddc")


