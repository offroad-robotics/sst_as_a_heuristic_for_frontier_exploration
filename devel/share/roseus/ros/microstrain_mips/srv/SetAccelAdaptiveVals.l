;; Auto-generated. Do not edit!


(when (boundp 'microstrain_mips::SetAccelAdaptiveVals)
  (if (not (find-package "MICROSTRAIN_MIPS"))
    (make-package "MICROSTRAIN_MIPS"))
  (shadow 'SetAccelAdaptiveVals (find-package "MICROSTRAIN_MIPS")))
(unless (find-package "MICROSTRAIN_MIPS::SETACCELADAPTIVEVALS")
  (make-package "MICROSTRAIN_MIPS::SETACCELADAPTIVEVALS"))
(unless (find-package "MICROSTRAIN_MIPS::SETACCELADAPTIVEVALSREQUEST")
  (make-package "MICROSTRAIN_MIPS::SETACCELADAPTIVEVALSREQUEST"))
(unless (find-package "MICROSTRAIN_MIPS::SETACCELADAPTIVEVALSRESPONSE")
  (make-package "MICROSTRAIN_MIPS::SETACCELADAPTIVEVALSRESPONSE"))

(in-package "ROS")





(defclass microstrain_mips::SetAccelAdaptiveValsRequest
  :super ros::object
  :slots (_enable _low_pass_cutoff _min_1sigma _low_limit _high_limit _low_limit_1sigma _high_limit_1sigma ))

(defmethod microstrain_mips::SetAccelAdaptiveValsRequest
  (:init
   (&key
    ((:enable __enable) 0.0)
    ((:low_pass_cutoff __low_pass_cutoff) 0.0)
    ((:min_1sigma __min_1sigma) 0.0)
    ((:low_limit __low_limit) 0.0)
    ((:high_limit __high_limit) 0.0)
    ((:low_limit_1sigma __low_limit_1sigma) 0.0)
    ((:high_limit_1sigma __high_limit_1sigma) 0.0)
    )
   (send-super :init)
   (setq _enable (float __enable))
   (setq _low_pass_cutoff (float __low_pass_cutoff))
   (setq _min_1sigma (float __min_1sigma))
   (setq _low_limit (float __low_limit))
   (setq _high_limit (float __high_limit))
   (setq _low_limit_1sigma (float __low_limit_1sigma))
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
  (:low_limit
   (&optional __low_limit)
   (if __low_limit (setq _low_limit __low_limit)) _low_limit)
  (:high_limit
   (&optional __high_limit)
   (if __high_limit (setq _high_limit __high_limit)) _high_limit)
  (:low_limit_1sigma
   (&optional __low_limit_1sigma)
   (if __low_limit_1sigma (setq _low_limit_1sigma __low_limit_1sigma)) _low_limit_1sigma)
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
    ;; float32 _low_limit
    4
    ;; float32 _high_limit
    4
    ;; float32 _low_limit_1sigma
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
     ;; float32 _low_limit
       (sys::poke _low_limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _high_limit
       (sys::poke _high_limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _low_limit_1sigma
       (sys::poke _low_limit_1sigma (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _low_limit
     (setq _low_limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _high_limit
     (setq _high_limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _low_limit_1sigma
     (setq _low_limit_1sigma (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _high_limit_1sigma
     (setq _high_limit_1sigma (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass microstrain_mips::SetAccelAdaptiveValsResponse
  :super ros::object
  :slots (_success ))

(defmethod microstrain_mips::SetAccelAdaptiveValsResponse
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

(defclass microstrain_mips::SetAccelAdaptiveVals
  :super ros::object
  :slots ())

(setf (get microstrain_mips::SetAccelAdaptiveVals :md5sum-) "f4333508f865a0d6b01f8e48e0168654")
(setf (get microstrain_mips::SetAccelAdaptiveVals :datatype-) "microstrain_mips/SetAccelAdaptiveVals")
(setf (get microstrain_mips::SetAccelAdaptiveVals :request) microstrain_mips::SetAccelAdaptiveValsRequest)
(setf (get microstrain_mips::SetAccelAdaptiveVals :response) microstrain_mips::SetAccelAdaptiveValsResponse)

(defmethod microstrain_mips::SetAccelAdaptiveValsRequest
  (:response () (instance microstrain_mips::SetAccelAdaptiveValsResponse :init)))

(setf (get microstrain_mips::SetAccelAdaptiveValsRequest :md5sum-) "f4333508f865a0d6b01f8e48e0168654")
(setf (get microstrain_mips::SetAccelAdaptiveValsRequest :datatype-) "microstrain_mips/SetAccelAdaptiveValsRequest")
(setf (get microstrain_mips::SetAccelAdaptiveValsRequest :definition-)
      "float32 enable
float32 low_pass_cutoff
float32 min_1sigma
float32 low_limit
float32 high_limit
float32 low_limit_1sigma
float32 high_limit_1sigma
---
bool success

")

(setf (get microstrain_mips::SetAccelAdaptiveValsResponse :md5sum-) "f4333508f865a0d6b01f8e48e0168654")
(setf (get microstrain_mips::SetAccelAdaptiveValsResponse :datatype-) "microstrain_mips/SetAccelAdaptiveValsResponse")
(setf (get microstrain_mips::SetAccelAdaptiveValsResponse :definition-)
      "float32 enable
float32 low_pass_cutoff
float32 min_1sigma
float32 low_limit
float32 high_limit
float32 low_limit_1sigma
float32 high_limit_1sigma
---
bool success

")



(provide :microstrain_mips/SetAccelAdaptiveVals "f4333508f865a0d6b01f8e48e0168654")


