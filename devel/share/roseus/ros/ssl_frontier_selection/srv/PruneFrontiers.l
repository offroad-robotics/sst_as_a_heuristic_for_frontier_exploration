;; Auto-generated. Do not edit!


(when (boundp 'ssl_frontier_selection::PruneFrontiers)
  (if (not (find-package "SSL_FRONTIER_SELECTION"))
    (make-package "SSL_FRONTIER_SELECTION"))
  (shadow 'PruneFrontiers (find-package "SSL_FRONTIER_SELECTION")))
(unless (find-package "SSL_FRONTIER_SELECTION::PRUNEFRONTIERS")
  (make-package "SSL_FRONTIER_SELECTION::PRUNEFRONTIERS"))
(unless (find-package "SSL_FRONTIER_SELECTION::PRUNEFRONTIERSREQUEST")
  (make-package "SSL_FRONTIER_SELECTION::PRUNEFRONTIERSREQUEST"))
(unless (find-package "SSL_FRONTIER_SELECTION::PRUNEFRONTIERSRESPONSE")
  (make-package "SSL_FRONTIER_SELECTION::PRUNEFRONTIERSRESPONSE"))

(in-package "ROS")





(defclass ssl_frontier_selection::PruneFrontiersRequest
  :super ros::object
  :slots ())

(defmethod ssl_frontier_selection::PruneFrontiersRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass ssl_frontier_selection::PruneFrontiersResponse
  :super ros::object
  :slots (_pruned ))

(defmethod ssl_frontier_selection::PruneFrontiersResponse
  (:init
   (&key
    ((:pruned __pruned) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _pruned __pruned)
   self)
  (:pruned
   (&optional __pruned)
   (if __pruned (setq _pruned __pruned)) _pruned)
  (:serialization-length
   ()
   (+
    ;; int32[] _pruned
    (* 4    (length _pruned)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _pruned
     (write-long (length _pruned) s)
     (dotimes (i (length _pruned))
       (write-long (elt _pruned i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _pruned
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pruned (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pruned i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass ssl_frontier_selection::PruneFrontiers
  :super ros::object
  :slots ())

(setf (get ssl_frontier_selection::PruneFrontiers :md5sum-) "5e0b05d933c831596f58cdbe4fb9041b")
(setf (get ssl_frontier_selection::PruneFrontiers :datatype-) "ssl_frontier_selection/PruneFrontiers")
(setf (get ssl_frontier_selection::PruneFrontiers :request) ssl_frontier_selection::PruneFrontiersRequest)
(setf (get ssl_frontier_selection::PruneFrontiers :response) ssl_frontier_selection::PruneFrontiersResponse)

(defmethod ssl_frontier_selection::PruneFrontiersRequest
  (:response () (instance ssl_frontier_selection::PruneFrontiersResponse :init)))

(setf (get ssl_frontier_selection::PruneFrontiersRequest :md5sum-) "5e0b05d933c831596f58cdbe4fb9041b")
(setf (get ssl_frontier_selection::PruneFrontiersRequest :datatype-) "ssl_frontier_selection/PruneFrontiersRequest")
(setf (get ssl_frontier_selection::PruneFrontiersRequest :definition-)
      "# request

---
# response
int32[] pruned 
")

(setf (get ssl_frontier_selection::PruneFrontiersResponse :md5sum-) "5e0b05d933c831596f58cdbe4fb9041b")
(setf (get ssl_frontier_selection::PruneFrontiersResponse :datatype-) "ssl_frontier_selection/PruneFrontiersResponse")
(setf (get ssl_frontier_selection::PruneFrontiersResponse :definition-)
      "# request

---
# response
int32[] pruned 
")



(provide :ssl_frontier_selection/PruneFrontiers "5e0b05d933c831596f58cdbe4fb9041b")


