;; Auto-generated. Do not edit!


(when (boundp 'microstrain_mips::SetEstimationControlFlags)
  (if (not (find-package "MICROSTRAIN_MIPS"))
    (make-package "MICROSTRAIN_MIPS"))
  (shadow 'SetEstimationControlFlags (find-package "MICROSTRAIN_MIPS")))
(unless (find-package "MICROSTRAIN_MIPS::SETESTIMATIONCONTROLFLAGS")
  (make-package "MICROSTRAIN_MIPS::SETESTIMATIONCONTROLFLAGS"))
(unless (find-package "MICROSTRAIN_MIPS::SETESTIMATIONCONTROLFLAGSREQUEST")
  (make-package "MICROSTRAIN_MIPS::SETESTIMATIONCONTROLFLAGSREQUEST"))
(unless (find-package "MICROSTRAIN_MIPS::SETESTIMATIONCONTROLFLAGSRESPONSE")
  (make-package "MICROSTRAIN_MIPS::SETESTIMATIONCONTROLFLAGSRESPONSE"))

(in-package "ROS")





(intern "*GYRO_BIAS_ESTIMATION*" (find-package "MICROSTRAIN_MIPS::SETESTIMATIONCONTROLFLAGSREQUEST"))
(shadow '*GYRO_BIAS_ESTIMATION* (find-package "MICROSTRAIN_MIPS::SETESTIMATIONCONTROLFLAGSREQUEST"))
(defconstant microstrain_mips::SetEstimationControlFlagsRequest::*GYRO_BIAS_ESTIMATION* 1)
(intern "*HARD_IRON_AUTO_CALIBRATION*" (find-package "MICROSTRAIN_MIPS::SETESTIMATIONCONTROLFLAGSREQUEST"))
(shadow '*HARD_IRON_AUTO_CALIBRATION* (find-package "MICROSTRAIN_MIPS::SETESTIMATIONCONTROLFLAGSREQUEST"))
(defconstant microstrain_mips::SetEstimationControlFlagsRequest::*HARD_IRON_AUTO_CALIBRATION* 32)
(intern "*SOFT_IRON_AUTO_CALIBRATION*" (find-package "MICROSTRAIN_MIPS::SETESTIMATIONCONTROLFLAGSREQUEST"))
(shadow '*SOFT_IRON_AUTO_CALIBRATION* (find-package "MICROSTRAIN_MIPS::SETESTIMATIONCONTROLFLAGSREQUEST"))
(defconstant microstrain_mips::SetEstimationControlFlagsRequest::*SOFT_IRON_AUTO_CALIBRATION* 64)

(defun microstrain_mips::SetEstimationControlFlagsRequest-to-symbol (const)
  (cond
        ((= const 1) 'microstrain_mips::SetEstimationControlFlagsRequest::*GYRO_BIAS_ESTIMATION*)
        ((= const 32) 'microstrain_mips::SetEstimationControlFlagsRequest::*HARD_IRON_AUTO_CALIBRATION*)
        ((= const 64) 'microstrain_mips::SetEstimationControlFlagsRequest::*SOFT_IRON_AUTO_CALIBRATION*)
        (t nil)))

(defclass microstrain_mips::SetEstimationControlFlagsRequest
  :super ros::object
  :slots (_flag ))

(defmethod microstrain_mips::SetEstimationControlFlagsRequest
  (:init
   (&key
    ((:flag __flag) 0)
    )
   (send-super :init)
   (setq _flag (round __flag))
   self)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:serialization-length
   ()
   (+
    ;; int8 _flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _flag
       (write-byte _flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _flag
     (setq _flag (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _flag 127) (setq _flag (- _flag 256)))
   ;;
   self)
  )

(defclass microstrain_mips::SetEstimationControlFlagsResponse
  :super ros::object
  :slots (_success ))

(defmethod microstrain_mips::SetEstimationControlFlagsResponse
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

(defclass microstrain_mips::SetEstimationControlFlags
  :super ros::object
  :slots ())

(setf (get microstrain_mips::SetEstimationControlFlags :md5sum-) "692fa639072887f90a3c63c3c00dc9f6")
(setf (get microstrain_mips::SetEstimationControlFlags :datatype-) "microstrain_mips/SetEstimationControlFlags")
(setf (get microstrain_mips::SetEstimationControlFlags :request) microstrain_mips::SetEstimationControlFlagsRequest)
(setf (get microstrain_mips::SetEstimationControlFlags :response) microstrain_mips::SetEstimationControlFlagsResponse)

(defmethod microstrain_mips::SetEstimationControlFlagsRequest
  (:response () (instance microstrain_mips::SetEstimationControlFlagsResponse :init)))

(setf (get microstrain_mips::SetEstimationControlFlagsRequest :md5sum-) "692fa639072887f90a3c63c3c00dc9f6")
(setf (get microstrain_mips::SetEstimationControlFlagsRequest :datatype-) "microstrain_mips/SetEstimationControlFlagsRequest")
(setf (get microstrain_mips::SetEstimationControlFlagsRequest :definition-)
      "int8 GYRO_BIAS_ESTIMATION=1
int8 HARD_IRON_AUTO_CALIBRATION=32
int8 SOFT_IRON_AUTO_CALIBRATION=64
int8 flag
---
bool success

")

(setf (get microstrain_mips::SetEstimationControlFlagsResponse :md5sum-) "692fa639072887f90a3c63c3c00dc9f6")
(setf (get microstrain_mips::SetEstimationControlFlagsResponse :datatype-) "microstrain_mips/SetEstimationControlFlagsResponse")
(setf (get microstrain_mips::SetEstimationControlFlagsResponse :definition-)
      "int8 GYRO_BIAS_ESTIMATION=1
int8 HARD_IRON_AUTO_CALIBRATION=32
int8 SOFT_IRON_AUTO_CALIBRATION=64
int8 flag
---
bool success

")



(provide :microstrain_mips/SetEstimationControlFlags "692fa639072887f90a3c63c3c00dc9f6")


