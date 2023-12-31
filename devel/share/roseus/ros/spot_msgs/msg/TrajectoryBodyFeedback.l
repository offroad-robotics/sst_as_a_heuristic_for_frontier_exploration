;; Auto-generated. Do not edit!


(when (boundp 'spot_msgs::TrajectoryBodyFeedback)
  (if (not (find-package "SPOT_MSGS"))
    (make-package "SPOT_MSGS"))
  (shadow 'TrajectoryBodyFeedback (find-package "SPOT_MSGS")))
(unless (find-package "SPOT_MSGS::TRAJECTORYBODYFEEDBACK")
  (make-package "SPOT_MSGS::TRAJECTORYBODYFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryBodyFeedback.msg.html


(defclass spot_msgs::TrajectoryBodyFeedback
  :super ros::object
  :slots (_feedback ))

(defmethod spot_msgs::TrajectoryBodyFeedback
  (:init
   (&key
    ((:feedback __feedback) "")
    )
   (send-super :init)
   (setq _feedback (string __feedback))
   self)
  (:feedback
   (&optional __feedback)
   (if __feedback (setq _feedback __feedback)) _feedback)
  (:serialization-length
   ()
   (+
    ;; string _feedback
    4 (length _feedback)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _feedback
       (write-long (length _feedback) s) (princ _feedback s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _feedback
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _feedback (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get spot_msgs::TrajectoryBodyFeedback :md5sum-) "c14cdf907e5c7c7fd47292add15660f0")
(setf (get spot_msgs::TrajectoryBodyFeedback :datatype-) "spot_msgs/TrajectoryBodyFeedback")
(setf (get spot_msgs::TrajectoryBodyFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
string feedback

")



(provide :spot_msgs/TrajectoryBodyFeedback "c14cdf907e5c7c7fd47292add15660f0")


