;; Auto-generated. Do not edit!


(when (boundp 'microstrain_mips::SetAccelBias)
  (if (not (find-package "MICROSTRAIN_MIPS"))
    (make-package "MICROSTRAIN_MIPS"))
  (shadow 'SetAccelBias (find-package "MICROSTRAIN_MIPS")))
(unless (find-package "MICROSTRAIN_MIPS::SETACCELBIAS")
  (make-package "MICROSTRAIN_MIPS::SETACCELBIAS"))
(unless (find-package "MICROSTRAIN_MIPS::SETACCELBIASREQUEST")
  (make-package "MICROSTRAIN_MIPS::SETACCELBIASREQUEST"))
(unless (find-package "MICROSTRAIN_MIPS::SETACCELBIASRESPONSE")
  (make-package "MICROSTRAIN_MIPS::SETACCELBIASRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass microstrain_mips::SetAccelBiasRequest
  :super ros::object
  :slots (_bias ))

(defmethod microstrain_mips::SetAccelBiasRequest
  (:init
   (&key
    ((:bias __bias) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _bias __bias)
   self)
  (:bias
   (&rest __bias)
   (if (keywordp (car __bias))
       (send* _bias __bias)
     (progn
       (if __bias (setq _bias (car __bias)))
       _bias)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _bias
    (send _bias :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _bias
       (send _bias :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _bias
     (send _bias :deserialize buf ptr-) (incf ptr- (send _bias :serialization-length))
   ;;
   self)
  )

(defclass microstrain_mips::SetAccelBiasResponse
  :super ros::object
  :slots (_success ))

(defmethod microstrain_mips::SetAccelBiasResponse
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

(defclass microstrain_mips::SetAccelBias
  :super ros::object
  :slots ())

(setf (get microstrain_mips::SetAccelBias :md5sum-) "7f2cf85b824b45f9f629310ab233f3c6")
(setf (get microstrain_mips::SetAccelBias :datatype-) "microstrain_mips/SetAccelBias")
(setf (get microstrain_mips::SetAccelBias :request) microstrain_mips::SetAccelBiasRequest)
(setf (get microstrain_mips::SetAccelBias :response) microstrain_mips::SetAccelBiasResponse)

(defmethod microstrain_mips::SetAccelBiasRequest
  (:response () (instance microstrain_mips::SetAccelBiasResponse :init)))

(setf (get microstrain_mips::SetAccelBiasRequest :md5sum-) "7f2cf85b824b45f9f629310ab233f3c6")
(setf (get microstrain_mips::SetAccelBiasRequest :datatype-) "microstrain_mips/SetAccelBiasRequest")
(setf (get microstrain_mips::SetAccelBiasRequest :definition-)
      "geometry_msgs/Vector3 bias

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

(setf (get microstrain_mips::SetAccelBiasResponse :md5sum-) "7f2cf85b824b45f9f629310ab233f3c6")
(setf (get microstrain_mips::SetAccelBiasResponse :datatype-) "microstrain_mips/SetAccelBiasResponse")
(setf (get microstrain_mips::SetAccelBiasResponse :definition-)
      "geometry_msgs/Vector3 bias

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



(provide :microstrain_mips/SetAccelBias "7f2cf85b824b45f9f629310ab233f3c6")


