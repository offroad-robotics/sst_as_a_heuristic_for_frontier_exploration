;; Auto-generated. Do not edit!


(when (boundp 'microstrain_mips::SetDynamicsMode)
  (if (not (find-package "MICROSTRAIN_MIPS"))
    (make-package "MICROSTRAIN_MIPS"))
  (shadow 'SetDynamicsMode (find-package "MICROSTRAIN_MIPS")))
(unless (find-package "MICROSTRAIN_MIPS::SETDYNAMICSMODE")
  (make-package "MICROSTRAIN_MIPS::SETDYNAMICSMODE"))
(unless (find-package "MICROSTRAIN_MIPS::SETDYNAMICSMODEREQUEST")
  (make-package "MICROSTRAIN_MIPS::SETDYNAMICSMODEREQUEST"))
(unless (find-package "MICROSTRAIN_MIPS::SETDYNAMICSMODERESPONSE")
  (make-package "MICROSTRAIN_MIPS::SETDYNAMICSMODERESPONSE"))

(in-package "ROS")





(intern "*PORTABLE*" (find-package "MICROSTRAIN_MIPS::SETDYNAMICSMODEREQUEST"))
(shadow '*PORTABLE* (find-package "MICROSTRAIN_MIPS::SETDYNAMICSMODEREQUEST"))
(defconstant microstrain_mips::SetDynamicsModeRequest::*PORTABLE* 1)
(intern "*AUTOMOTIVE*" (find-package "MICROSTRAIN_MIPS::SETDYNAMICSMODEREQUEST"))
(shadow '*AUTOMOTIVE* (find-package "MICROSTRAIN_MIPS::SETDYNAMICSMODEREQUEST"))
(defconstant microstrain_mips::SetDynamicsModeRequest::*AUTOMOTIVE* 2)
(intern "*AIRBORNE*" (find-package "MICROSTRAIN_MIPS::SETDYNAMICSMODEREQUEST"))
(shadow '*AIRBORNE* (find-package "MICROSTRAIN_MIPS::SETDYNAMICSMODEREQUEST"))
(defconstant microstrain_mips::SetDynamicsModeRequest::*AIRBORNE* 3)

(defun microstrain_mips::SetDynamicsModeRequest-to-symbol (const)
  (cond
        ((= const 1) 'microstrain_mips::SetDynamicsModeRequest::*PORTABLE*)
        ((= const 2) 'microstrain_mips::SetDynamicsModeRequest::*AUTOMOTIVE*)
        ((= const 3) 'microstrain_mips::SetDynamicsModeRequest::*AIRBORNE*)
        (t nil)))

(defclass microstrain_mips::SetDynamicsModeRequest
  :super ros::object
  :slots (_mode ))

(defmethod microstrain_mips::SetDynamicsModeRequest
  (:init
   (&key
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; int8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mode 127) (setq _mode (- _mode 256)))
   ;;
   self)
  )

(defclass microstrain_mips::SetDynamicsModeResponse
  :super ros::object
  :slots (_success ))

(defmethod microstrain_mips::SetDynamicsModeResponse
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

(defclass microstrain_mips::SetDynamicsMode
  :super ros::object
  :slots ())

(setf (get microstrain_mips::SetDynamicsMode :md5sum-) "44114e5483e212902c0a057defaa1a3b")
(setf (get microstrain_mips::SetDynamicsMode :datatype-) "microstrain_mips/SetDynamicsMode")
(setf (get microstrain_mips::SetDynamicsMode :request) microstrain_mips::SetDynamicsModeRequest)
(setf (get microstrain_mips::SetDynamicsMode :response) microstrain_mips::SetDynamicsModeResponse)

(defmethod microstrain_mips::SetDynamicsModeRequest
  (:response () (instance microstrain_mips::SetDynamicsModeResponse :init)))

(setf (get microstrain_mips::SetDynamicsModeRequest :md5sum-) "44114e5483e212902c0a057defaa1a3b")
(setf (get microstrain_mips::SetDynamicsModeRequest :datatype-) "microstrain_mips/SetDynamicsModeRequest")
(setf (get microstrain_mips::SetDynamicsModeRequest :definition-)
      "int8 PORTABLE=1
int8 AUTOMOTIVE=2
int8 AIRBORNE=3
int8 mode
---
bool success

")

(setf (get microstrain_mips::SetDynamicsModeResponse :md5sum-) "44114e5483e212902c0a057defaa1a3b")
(setf (get microstrain_mips::SetDynamicsModeResponse :datatype-) "microstrain_mips/SetDynamicsModeResponse")
(setf (get microstrain_mips::SetDynamicsModeResponse :definition-)
      "int8 PORTABLE=1
int8 AUTOMOTIVE=2
int8 AIRBORNE=3
int8 mode
---
bool success

")



(provide :microstrain_mips/SetDynamicsMode "44114e5483e212902c0a057defaa1a3b")


