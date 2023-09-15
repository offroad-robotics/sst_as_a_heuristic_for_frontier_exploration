;; Auto-generated. Do not edit!


(when (boundp 'microstrain_mips::SetTareOrientation)
  (if (not (find-package "MICROSTRAIN_MIPS"))
    (make-package "MICROSTRAIN_MIPS"))
  (shadow 'SetTareOrientation (find-package "MICROSTRAIN_MIPS")))
(unless (find-package "MICROSTRAIN_MIPS::SETTAREORIENTATION")
  (make-package "MICROSTRAIN_MIPS::SETTAREORIENTATION"))
(unless (find-package "MICROSTRAIN_MIPS::SETTAREORIENTATIONREQUEST")
  (make-package "MICROSTRAIN_MIPS::SETTAREORIENTATIONREQUEST"))
(unless (find-package "MICROSTRAIN_MIPS::SETTAREORIENTATIONRESPONSE")
  (make-package "MICROSTRAIN_MIPS::SETTAREORIENTATIONRESPONSE"))

(in-package "ROS")





(defclass microstrain_mips::SetTareOrientationRequest
  :super ros::object
  :slots (_axis ))

(defmethod microstrain_mips::SetTareOrientationRequest
  (:init
   (&key
    ((:axis __axis) 0)
    )
   (send-super :init)
   (setq _axis (round __axis))
   self)
  (:axis
   (&optional __axis)
   (if __axis (setq _axis __axis)) _axis)
  (:serialization-length
   ()
   (+
    ;; int8 _axis
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _axis
       (write-byte _axis s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _axis
     (setq _axis (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _axis 127) (setq _axis (- _axis 256)))
   ;;
   self)
  )

(defclass microstrain_mips::SetTareOrientationResponse
  :super ros::object
  :slots (_success ))

(defmethod microstrain_mips::SetTareOrientationResponse
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

(defclass microstrain_mips::SetTareOrientation
  :super ros::object
  :slots ())

(setf (get microstrain_mips::SetTareOrientation :md5sum-) "75811cb68205ae4484ed796af90a6397")
(setf (get microstrain_mips::SetTareOrientation :datatype-) "microstrain_mips/SetTareOrientation")
(setf (get microstrain_mips::SetTareOrientation :request) microstrain_mips::SetTareOrientationRequest)
(setf (get microstrain_mips::SetTareOrientation :response) microstrain_mips::SetTareOrientationResponse)

(defmethod microstrain_mips::SetTareOrientationRequest
  (:response () (instance microstrain_mips::SetTareOrientationResponse :init)))

(setf (get microstrain_mips::SetTareOrientationRequest :md5sum-) "75811cb68205ae4484ed796af90a6397")
(setf (get microstrain_mips::SetTareOrientationRequest :datatype-) "microstrain_mips/SetTareOrientationRequest")
(setf (get microstrain_mips::SetTareOrientationRequest :definition-)
      "int8 axis
---
bool success

")

(setf (get microstrain_mips::SetTareOrientationResponse :md5sum-) "75811cb68205ae4484ed796af90a6397")
(setf (get microstrain_mips::SetTareOrientationResponse :datatype-) "microstrain_mips/SetTareOrientationResponse")
(setf (get microstrain_mips::SetTareOrientationResponse :definition-)
      "int8 axis
---
bool success

")



(provide :microstrain_mips/SetTareOrientation "75811cb68205ae4484ed796af90a6397")


