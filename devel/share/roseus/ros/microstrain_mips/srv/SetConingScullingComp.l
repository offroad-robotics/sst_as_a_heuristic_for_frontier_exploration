;; Auto-generated. Do not edit!


(when (boundp 'microstrain_mips::SetConingScullingComp)
  (if (not (find-package "MICROSTRAIN_MIPS"))
    (make-package "MICROSTRAIN_MIPS"))
  (shadow 'SetConingScullingComp (find-package "MICROSTRAIN_MIPS")))
(unless (find-package "MICROSTRAIN_MIPS::SETCONINGSCULLINGCOMP")
  (make-package "MICROSTRAIN_MIPS::SETCONINGSCULLINGCOMP"))
(unless (find-package "MICROSTRAIN_MIPS::SETCONINGSCULLINGCOMPREQUEST")
  (make-package "MICROSTRAIN_MIPS::SETCONINGSCULLINGCOMPREQUEST"))
(unless (find-package "MICROSTRAIN_MIPS::SETCONINGSCULLINGCOMPRESPONSE")
  (make-package "MICROSTRAIN_MIPS::SETCONINGSCULLINGCOMPRESPONSE"))

(in-package "ROS")





(defclass microstrain_mips::SetConingScullingCompRequest
  :super ros::object
  :slots (_enable ))

(defmethod microstrain_mips::SetConingScullingCompRequest
  (:init
   (&key
    ((:enable __enable) 0)
    )
   (send-super :init)
   (setq _enable (round __enable))
   self)
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; int8 _enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _enable
       (write-byte _enable s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _enable
     (setq _enable (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _enable 127) (setq _enable (- _enable 256)))
   ;;
   self)
  )

(defclass microstrain_mips::SetConingScullingCompResponse
  :super ros::object
  :slots (_success ))

(defmethod microstrain_mips::SetConingScullingCompResponse
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

(defclass microstrain_mips::SetConingScullingComp
  :super ros::object
  :slots ())

(setf (get microstrain_mips::SetConingScullingComp :md5sum-) "f7caf6e1618fb8cc640ac244d6c53d7f")
(setf (get microstrain_mips::SetConingScullingComp :datatype-) "microstrain_mips/SetConingScullingComp")
(setf (get microstrain_mips::SetConingScullingComp :request) microstrain_mips::SetConingScullingCompRequest)
(setf (get microstrain_mips::SetConingScullingComp :response) microstrain_mips::SetConingScullingCompResponse)

(defmethod microstrain_mips::SetConingScullingCompRequest
  (:response () (instance microstrain_mips::SetConingScullingCompResponse :init)))

(setf (get microstrain_mips::SetConingScullingCompRequest :md5sum-) "f7caf6e1618fb8cc640ac244d6c53d7f")
(setf (get microstrain_mips::SetConingScullingCompRequest :datatype-) "microstrain_mips/SetConingScullingCompRequest")
(setf (get microstrain_mips::SetConingScullingCompRequest :definition-)
      "int8 enable
---
bool success

")

(setf (get microstrain_mips::SetConingScullingCompResponse :md5sum-) "f7caf6e1618fb8cc640ac244d6c53d7f")
(setf (get microstrain_mips::SetConingScullingCompResponse :datatype-) "microstrain_mips/SetConingScullingCompResponse")
(setf (get microstrain_mips::SetConingScullingCompResponse :definition-)
      "int8 enable
---
bool success

")



(provide :microstrain_mips/SetConingScullingComp "f7caf6e1618fb8cc640ac244d6c53d7f")


