;; Auto-generated. Do not edit!


(when (boundp 'spot_msgs::TrajectoryResult)
  (if (not (find-package "SPOT_MSGS"))
    (make-package "SPOT_MSGS"))
  (shadow 'TrajectoryResult (find-package "SPOT_MSGS")))
(unless (find-package "SPOT_MSGS::TRAJECTORYRESULT")
  (make-package "SPOT_MSGS::TRAJECTORYRESULT"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryResult.msg.html


(defclass spot_msgs::TrajectoryResult
  :super ros::object
  :slots (_success _message ))

(defmethod spot_msgs::TrajectoryResult
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

(setf (get spot_msgs::TrajectoryResult :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get spot_msgs::TrajectoryResult :datatype-) "spot_msgs/TrajectoryResult")
(setf (get spot_msgs::TrajectoryResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
bool success
string message

")



(provide :spot_msgs/TrajectoryResult "937c9679a518e3a18d831e57125ea522")


