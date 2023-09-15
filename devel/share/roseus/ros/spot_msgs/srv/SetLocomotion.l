;; Auto-generated. Do not edit!


(when (boundp 'spot_msgs::SetLocomotion)
  (if (not (find-package "SPOT_MSGS"))
    (make-package "SPOT_MSGS"))
  (shadow 'SetLocomotion (find-package "SPOT_MSGS")))
(unless (find-package "SPOT_MSGS::SETLOCOMOTION")
  (make-package "SPOT_MSGS::SETLOCOMOTION"))
(unless (find-package "SPOT_MSGS::SETLOCOMOTIONREQUEST")
  (make-package "SPOT_MSGS::SETLOCOMOTIONREQUEST"))
(unless (find-package "SPOT_MSGS::SETLOCOMOTIONRESPONSE")
  (make-package "SPOT_MSGS::SETLOCOMOTIONRESPONSE"))

(in-package "ROS")





(defclass spot_msgs::SetLocomotionRequest
  :super ros::object
  :slots (_locomotion_mode ))

(defmethod spot_msgs::SetLocomotionRequest
  (:init
   (&key
    ((:locomotion_mode __locomotion_mode) 0)
    )
   (send-super :init)
   (setq _locomotion_mode (round __locomotion_mode))
   self)
  (:locomotion_mode
   (&optional __locomotion_mode)
   (if __locomotion_mode (setq _locomotion_mode __locomotion_mode)) _locomotion_mode)
  (:serialization-length
   ()
   (+
    ;; uint32 _locomotion_mode
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _locomotion_mode
       (write-long _locomotion_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _locomotion_mode
     (setq _locomotion_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass spot_msgs::SetLocomotionResponse
  :super ros::object
  :slots (_success _message ))

(defmethod spot_msgs::SetLocomotionResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass spot_msgs::SetLocomotion
  :super ros::object
  :slots ())

(setf (get spot_msgs::SetLocomotion :md5sum-) "c56f88cac429fded4d7931238a2795c7")
(setf (get spot_msgs::SetLocomotion :datatype-) "spot_msgs/SetLocomotion")
(setf (get spot_msgs::SetLocomotion :request) spot_msgs::SetLocomotionRequest)
(setf (get spot_msgs::SetLocomotion :response) spot_msgs::SetLocomotionResponse)

(defmethod spot_msgs::SetLocomotionRequest
  (:response () (instance spot_msgs::SetLocomotionResponse :init)))

(setf (get spot_msgs::SetLocomotionRequest :md5sum-) "c56f88cac429fded4d7931238a2795c7")
(setf (get spot_msgs::SetLocomotionRequest :datatype-) "spot_msgs/SetLocomotionRequest")
(setf (get spot_msgs::SetLocomotionRequest :definition-)
      "uint32 locomotion_mode # See https://dev.bostondynamics.com/protos/bosdyn/api/proto_reference.html?highlight=mobilityparams#locomotionhint for details
---
bool success
string message

")

(setf (get spot_msgs::SetLocomotionResponse :md5sum-) "c56f88cac429fded4d7931238a2795c7")
(setf (get spot_msgs::SetLocomotionResponse :datatype-) "spot_msgs/SetLocomotionResponse")
(setf (get spot_msgs::SetLocomotionResponse :definition-)
      "uint32 locomotion_mode # See https://dev.bostondynamics.com/protos/bosdyn/api/proto_reference.html?highlight=mobilityparams#locomotionhint for details
---
bool success
string message

")



(provide :spot_msgs/SetLocomotion "c56f88cac429fded4d7931238a2795c7")


