;; Auto-generated. Do not edit!


(when (boundp 'spot_msgs::MaplessTrajectoryResult)
  (if (not (find-package "SPOT_MSGS"))
    (make-package "SPOT_MSGS"))
  (shadow 'MaplessTrajectoryResult (find-package "SPOT_MSGS")))
(unless (find-package "SPOT_MSGS::MAPLESSTRAJECTORYRESULT")
  (make-package "SPOT_MSGS::MAPLESSTRAJECTORYRESULT"))

(in-package "ROS")
;;//! \htmlinclude MaplessTrajectoryResult.msg.html


(defclass spot_msgs::MaplessTrajectoryResult
  :super ros::object
  :slots (_success _message _attempts ))

(defmethod spot_msgs::MaplessTrajectoryResult
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:attempts __attempts) 0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _attempts (round __attempts))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:attempts
   (&optional __attempts)
   (if __attempts (setq _attempts __attempts)) _attempts)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; int32 _attempts
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; int32 _attempts
       (write-long _attempts s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _attempts
     (setq _attempts (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get spot_msgs::MaplessTrajectoryResult :md5sum-) "72ec539bcc97b6f400ba85e7aa9576ba")
(setf (get spot_msgs::MaplessTrajectoryResult :datatype-) "spot_msgs/MaplessTrajectoryResult")
(setf (get spot_msgs::MaplessTrajectoryResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Result
bool success
string message
int32 attempts

")



(provide :spot_msgs/MaplessTrajectoryResult "72ec539bcc97b6f400ba85e7aa9576ba")


