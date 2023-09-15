;; Auto-generated. Do not edit!


(when (boundp 'microstrain_mips::SetComplementaryFilter)
  (if (not (find-package "MICROSTRAIN_MIPS"))
    (make-package "MICROSTRAIN_MIPS"))
  (shadow 'SetComplementaryFilter (find-package "MICROSTRAIN_MIPS")))
(unless (find-package "MICROSTRAIN_MIPS::SETCOMPLEMENTARYFILTER")
  (make-package "MICROSTRAIN_MIPS::SETCOMPLEMENTARYFILTER"))
(unless (find-package "MICROSTRAIN_MIPS::SETCOMPLEMENTARYFILTERREQUEST")
  (make-package "MICROSTRAIN_MIPS::SETCOMPLEMENTARYFILTERREQUEST"))
(unless (find-package "MICROSTRAIN_MIPS::SETCOMPLEMENTARYFILTERRESPONSE")
  (make-package "MICROSTRAIN_MIPS::SETCOMPLEMENTARYFILTERRESPONSE"))

(in-package "ROS")





(defclass microstrain_mips::SetComplementaryFilterRequest
  :super ros::object
  :slots (_north_comp_enable _up_comp_enable _north_comp_time_const _up_comp_time_const ))

(defmethod microstrain_mips::SetComplementaryFilterRequest
  (:init
   (&key
    ((:north_comp_enable __north_comp_enable) 0)
    ((:up_comp_enable __up_comp_enable) 0)
    ((:north_comp_time_const __north_comp_time_const) 0.0)
    ((:up_comp_time_const __up_comp_time_const) 0.0)
    )
   (send-super :init)
   (setq _north_comp_enable (round __north_comp_enable))
   (setq _up_comp_enable (round __up_comp_enable))
   (setq _north_comp_time_const (float __north_comp_time_const))
   (setq _up_comp_time_const (float __up_comp_time_const))
   self)
  (:north_comp_enable
   (&optional __north_comp_enable)
   (if __north_comp_enable (setq _north_comp_enable __north_comp_enable)) _north_comp_enable)
  (:up_comp_enable
   (&optional __up_comp_enable)
   (if __up_comp_enable (setq _up_comp_enable __up_comp_enable)) _up_comp_enable)
  (:north_comp_time_const
   (&optional __north_comp_time_const)
   (if __north_comp_time_const (setq _north_comp_time_const __north_comp_time_const)) _north_comp_time_const)
  (:up_comp_time_const
   (&optional __up_comp_time_const)
   (if __up_comp_time_const (setq _up_comp_time_const __up_comp_time_const)) _up_comp_time_const)
  (:serialization-length
   ()
   (+
    ;; int8 _north_comp_enable
    1
    ;; int8 _up_comp_enable
    1
    ;; float32 _north_comp_time_const
    4
    ;; float32 _up_comp_time_const
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _north_comp_enable
       (write-byte _north_comp_enable s)
     ;; int8 _up_comp_enable
       (write-byte _up_comp_enable s)
     ;; float32 _north_comp_time_const
       (sys::poke _north_comp_time_const (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _up_comp_time_const
       (sys::poke _up_comp_time_const (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _north_comp_enable
     (setq _north_comp_enable (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _north_comp_enable 127) (setq _north_comp_enable (- _north_comp_enable 256)))
   ;; int8 _up_comp_enable
     (setq _up_comp_enable (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _up_comp_enable 127) (setq _up_comp_enable (- _up_comp_enable 256)))
   ;; float32 _north_comp_time_const
     (setq _north_comp_time_const (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _up_comp_time_const
     (setq _up_comp_time_const (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass microstrain_mips::SetComplementaryFilterResponse
  :super ros::object
  :slots (_success ))

(defmethod microstrain_mips::SetComplementaryFilterResponse
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

(defclass microstrain_mips::SetComplementaryFilter
  :super ros::object
  :slots ())

(setf (get microstrain_mips::SetComplementaryFilter :md5sum-) "f2496add5126d026ef6c94d30c11db4c")
(setf (get microstrain_mips::SetComplementaryFilter :datatype-) "microstrain_mips/SetComplementaryFilter")
(setf (get microstrain_mips::SetComplementaryFilter :request) microstrain_mips::SetComplementaryFilterRequest)
(setf (get microstrain_mips::SetComplementaryFilter :response) microstrain_mips::SetComplementaryFilterResponse)

(defmethod microstrain_mips::SetComplementaryFilterRequest
  (:response () (instance microstrain_mips::SetComplementaryFilterResponse :init)))

(setf (get microstrain_mips::SetComplementaryFilterRequest :md5sum-) "f2496add5126d026ef6c94d30c11db4c")
(setf (get microstrain_mips::SetComplementaryFilterRequest :datatype-) "microstrain_mips/SetComplementaryFilterRequest")
(setf (get microstrain_mips::SetComplementaryFilterRequest :definition-)
      "int8 north_comp_enable
int8 up_comp_enable
float32 north_comp_time_const
float32 up_comp_time_const

---
bool success

")

(setf (get microstrain_mips::SetComplementaryFilterResponse :md5sum-) "f2496add5126d026ef6c94d30c11db4c")
(setf (get microstrain_mips::SetComplementaryFilterResponse :datatype-) "microstrain_mips/SetComplementaryFilterResponse")
(setf (get microstrain_mips::SetComplementaryFilterResponse :definition-)
      "int8 north_comp_enable
int8 up_comp_enable
float32 north_comp_time_const
float32 up_comp_time_const

---
bool success

")



(provide :microstrain_mips/SetComplementaryFilter "f2496add5126d026ef6c94d30c11db4c")


