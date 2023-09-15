;; Auto-generated. Do not edit!


(when (boundp 'microstrain_mips::SetZeroAngleUpdateThreshold)
  (if (not (find-package "MICROSTRAIN_MIPS"))
    (make-package "MICROSTRAIN_MIPS"))
  (shadow 'SetZeroAngleUpdateThreshold (find-package "MICROSTRAIN_MIPS")))
(unless (find-package "MICROSTRAIN_MIPS::SETZEROANGLEUPDATETHRESHOLD")
  (make-package "MICROSTRAIN_MIPS::SETZEROANGLEUPDATETHRESHOLD"))
(unless (find-package "MICROSTRAIN_MIPS::SETZEROANGLEUPDATETHRESHOLDREQUEST")
  (make-package "MICROSTRAIN_MIPS::SETZEROANGLEUPDATETHRESHOLDREQUEST"))
(unless (find-package "MICROSTRAIN_MIPS::SETZEROANGLEUPDATETHRESHOLDRESPONSE")
  (make-package "MICROSTRAIN_MIPS::SETZEROANGLEUPDATETHRESHOLDRESPONSE"))

(in-package "ROS")





(defclass microstrain_mips::SetZeroAngleUpdateThresholdRequest
  :super ros::object
  :slots (_enable _threshold ))

(defmethod microstrain_mips::SetZeroAngleUpdateThresholdRequest
  (:init
   (&key
    ((:enable __enable) 0)
    ((:threshold __threshold) 0.0)
    )
   (send-super :init)
   (setq _enable (round __enable))
   (setq _threshold (float __threshold))
   self)
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:threshold
   (&optional __threshold)
   (if __threshold (setq _threshold __threshold)) _threshold)
  (:serialization-length
   ()
   (+
    ;; int8 _enable
    1
    ;; float32 _threshold
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _enable
       (write-byte _enable s)
     ;; float32 _threshold
       (sys::poke _threshold (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _enable
     (setq _enable (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _enable 127) (setq _enable (- _enable 256)))
   ;; float32 _threshold
     (setq _threshold (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass microstrain_mips::SetZeroAngleUpdateThresholdResponse
  :super ros::object
  :slots (_success ))

(defmethod microstrain_mips::SetZeroAngleUpdateThresholdResponse
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

(defclass microstrain_mips::SetZeroAngleUpdateThreshold
  :super ros::object
  :slots ())

(setf (get microstrain_mips::SetZeroAngleUpdateThreshold :md5sum-) "ea1115ed39d8a581530c7c251ee443e6")
(setf (get microstrain_mips::SetZeroAngleUpdateThreshold :datatype-) "microstrain_mips/SetZeroAngleUpdateThreshold")
(setf (get microstrain_mips::SetZeroAngleUpdateThreshold :request) microstrain_mips::SetZeroAngleUpdateThresholdRequest)
(setf (get microstrain_mips::SetZeroAngleUpdateThreshold :response) microstrain_mips::SetZeroAngleUpdateThresholdResponse)

(defmethod microstrain_mips::SetZeroAngleUpdateThresholdRequest
  (:response () (instance microstrain_mips::SetZeroAngleUpdateThresholdResponse :init)))

(setf (get microstrain_mips::SetZeroAngleUpdateThresholdRequest :md5sum-) "ea1115ed39d8a581530c7c251ee443e6")
(setf (get microstrain_mips::SetZeroAngleUpdateThresholdRequest :datatype-) "microstrain_mips/SetZeroAngleUpdateThresholdRequest")
(setf (get microstrain_mips::SetZeroAngleUpdateThresholdRequest :definition-)
      "int8 enable
float32 threshold
---
bool success

")

(setf (get microstrain_mips::SetZeroAngleUpdateThresholdResponse :md5sum-) "ea1115ed39d8a581530c7c251ee443e6")
(setf (get microstrain_mips::SetZeroAngleUpdateThresholdResponse :datatype-) "microstrain_mips/SetZeroAngleUpdateThresholdResponse")
(setf (get microstrain_mips::SetZeroAngleUpdateThresholdResponse :definition-)
      "int8 enable
float32 threshold
---
bool success

")



(provide :microstrain_mips/SetZeroAngleUpdateThreshold "ea1115ed39d8a581530c7c251ee443e6")


