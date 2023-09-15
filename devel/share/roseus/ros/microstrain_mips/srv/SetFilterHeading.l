;; Auto-generated. Do not edit!


(when (boundp 'microstrain_mips::SetFilterHeading)
  (if (not (find-package "MICROSTRAIN_MIPS"))
    (make-package "MICROSTRAIN_MIPS"))
  (shadow 'SetFilterHeading (find-package "MICROSTRAIN_MIPS")))
(unless (find-package "MICROSTRAIN_MIPS::SETFILTERHEADING")
  (make-package "MICROSTRAIN_MIPS::SETFILTERHEADING"))
(unless (find-package "MICROSTRAIN_MIPS::SETFILTERHEADINGREQUEST")
  (make-package "MICROSTRAIN_MIPS::SETFILTERHEADINGREQUEST"))
(unless (find-package "MICROSTRAIN_MIPS::SETFILTERHEADINGRESPONSE")
  (make-package "MICROSTRAIN_MIPS::SETFILTERHEADINGRESPONSE"))

(in-package "ROS")





(defclass microstrain_mips::SetFilterHeadingRequest
  :super ros::object
  :slots (_angle ))

(defmethod microstrain_mips::SetFilterHeadingRequest
  (:init
   (&key
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _angle (float __angle))
   self)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; float32 _angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass microstrain_mips::SetFilterHeadingResponse
  :super ros::object
  :slots (_success ))

(defmethod microstrain_mips::SetFilterHeadingResponse
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

(defclass microstrain_mips::SetFilterHeading
  :super ros::object
  :slots ())

(setf (get microstrain_mips::SetFilterHeading :md5sum-) "194939c001a63802dc4131cae92cda22")
(setf (get microstrain_mips::SetFilterHeading :datatype-) "microstrain_mips/SetFilterHeading")
(setf (get microstrain_mips::SetFilterHeading :request) microstrain_mips::SetFilterHeadingRequest)
(setf (get microstrain_mips::SetFilterHeading :response) microstrain_mips::SetFilterHeadingResponse)

(defmethod microstrain_mips::SetFilterHeadingRequest
  (:response () (instance microstrain_mips::SetFilterHeadingResponse :init)))

(setf (get microstrain_mips::SetFilterHeadingRequest :md5sum-) "194939c001a63802dc4131cae92cda22")
(setf (get microstrain_mips::SetFilterHeadingRequest :datatype-) "microstrain_mips/SetFilterHeadingRequest")
(setf (get microstrain_mips::SetFilterHeadingRequest :definition-)
      "float32 angle
---
bool success

")

(setf (get microstrain_mips::SetFilterHeadingResponse :md5sum-) "194939c001a63802dc4131cae92cda22")
(setf (get microstrain_mips::SetFilterHeadingResponse :datatype-) "microstrain_mips/SetFilterHeadingResponse")
(setf (get microstrain_mips::SetFilterHeadingResponse :definition-)
      "float32 angle
---
bool success

")



(provide :microstrain_mips/SetFilterHeading "194939c001a63802dc4131cae92cda22")


