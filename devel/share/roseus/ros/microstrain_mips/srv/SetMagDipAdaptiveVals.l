;; Auto-generated. Do not edit!


(when (boundp 'microstrain_mips::SetMagDipAdaptiveVals)
  (if (not (find-package "MICROSTRAIN_MIPS"))
    (make-package "MICROSTRAIN_MIPS"))
  (shadow 'SetMagDipAdaptiveVals (find-package "MICROSTRAIN_MIPS")))
(unless (find-package "MICROSTRAIN_MIPS::SETMAGDIPADAPTIVEVALS")
  (make-package "MICROSTRAIN_MIPS::SETMAGDIPADAPTIVEVALS"))
(unless (find-package "MICROSTRAIN_MIPS::SETMAGDIPADAPTIVEVALSREQUEST")
  (make-package "MICROSTRAIN_MIPS::SETMAGDIPADAPTIVEVALSREQUEST"))
(unless (find-package "MICROSTRAIN_MIPS::SETMAGDIPADAPTIVEVALSRESPONSE")
  (make-package "MICROSTRAIN_MIPS::SETMAGDIPADAPTIVEVALSRESPONSE"))

(in-package "ROS")





(defclass microstrain_mips::SetMagDipAdaptiveValsRequest
  :super ros::object
  :slots (_enable _low_pass_cutoff _min_1sigma _high_limit _high_limit_1sigma ))

(defmethod microstrain_mips::SetMagDipAdaptiveValsRequest
  (:init
   (&key
    ((:enable __enable) 0.0)
    ((:low_pass_cutoff __low_pass_cutoff) 0.0)
    ((:min_1sigma __min_1sigma) 0.0)
    ((:high_limit __high_limit) 0.0)
    ((:high_limit_1sigma __high_limit_1sigma) 0.0)
    )
   (send-super :init)
   (setq _enable (float __enable))
   (setq _low_pass_cutoff (float __low_pass_cutoff))
   (setq _min_1sigma (float __min_1sigma))
   (setq _high_limit (float __high_limit))
   (setq _high_limit_1sigma (float __high_limit_1sigma))
   self)
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:low_pass_cutoff
   (&optional __low_pass_cutoff)
   (if __low_pass_cutoff (setq _low_pass_cutoff __low_pass_cutoff)) _low_pass_cutoff)
  (:min_1sigma
   (&optional __min_1sigma)
   (if __min_1sigma (setq _min_1sigma __min_1sigma)) _min_1sigma)
  (:high_limit
   (&optional __high_limit)
   (if __high_limit (setq _high_limit __high_limit)) _high_limit)
  (:high_limit_1sigma
   (&optional __high_limit_1sigma)
   (if __high_limit_1sigma (setq _high_limit_1sigma __high_limit_1sigma)) _high_limit_1sigma)
  (:serialization-length
   ()
   (+
    ;; float32 _enable
    4
    ;; float32 _low_pass_cutoff
    4
    ;; float32 _min_1sigma
    4
    ;; float32 _high_limit
    4
    ;; float32 _high_limit_1sigma
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _enable
       (sys::poke _enable (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _low_pass_cutoff
       (sys::poke _low_pass_cutoff (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _min_1sigma
       (sys::poke _min_1sigma (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _high_limit
       (sys::poke _high_limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _high_limit_1sigma
       (sys::poke _high_limit_1sigma (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _enable
     (setq _enable (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _low_pass_cutoff
     (setq _low_pass_cutoff (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _min_1sigma
     (setq _min_1sigma (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _high_limit
     (setq _high_limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _high_limit_1sigma
     (setq _high_limit_1sigma (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass microstrain_mips::SetMagDipAdaptiveValsResponse
  :super ros::object
  :slots (_success ))

(defmethod microstrain_mips::SetMagDipAdaptiveValsResponse
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

(defclass microstrain_mips::SetMagDipAdaptiveVals
  :super ros::object
  :slots ())

(setf (get microstrain_mips::SetMagDipAdaptiveVals :md5sum-) "c71450f947e543c107e6e7b633ac2f16")
(setf (get microstrain_mips::SetMagDipAdaptiveVals :datatype-) "microstrain_mips/SetMagDipAdaptiveVals")
(setf (get microstrain_mips::SetMagDipAdaptiveVals :request) microstrain_mips::SetMagDipAdaptiveValsRequest)
(setf (get microstrain_mips::SetMagDipAdaptiveVals :response) microstrain_mips::SetMagDipAdaptiveValsResponse)

(defmethod microstrain_mips::SetMagDipAdaptiveValsRequest
  (:response () (instance microstrain_mips::SetMagDipAdaptiveValsResponse :init)))

(setf (get microstrain_mips::SetMagDipAdaptiveValsRequest :md5sum-) "c71450f947e543c107e6e7b633ac2f16")
(setf (get microstrain_mips::SetMagDipAdaptiveValsRequest :datatype-) "microstrain_mips/SetMagDipAdaptiveValsRequest")
(setf (get microstrain_mips::SetMagDipAdaptiveValsRequest :definition-)
      "float32 enable
float32 low_pass_cutoff
float32 min_1sigma
float32 high_limit
float32 high_limit_1sigma
---
bool success

")

(setf (get microstrain_mips::SetMagDipAdaptiveValsResponse :md5sum-) "c71450f947e543c107e6e7b633ac2f16")
(setf (get microstrain_mips::SetMagDipAdaptiveValsResponse :datatype-) "microstrain_mips/SetMagDipAdaptiveValsResponse")
(setf (get microstrain_mips::SetMagDipAdaptiveValsResponse :definition-)
      "float32 enable
float32 low_pass_cutoff
float32 min_1sigma
float32 high_limit
float32 high_limit_1sigma
---
bool success

")



(provide :microstrain_mips/SetMagDipAdaptiveVals "c71450f947e543c107e6e7b633ac2f16")


