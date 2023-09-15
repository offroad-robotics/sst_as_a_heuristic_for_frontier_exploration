;; Auto-generated. Do not edit!


(when (boundp 'ssl_frontier_selection::GetGraded)
  (if (not (find-package "SSL_FRONTIER_SELECTION"))
    (make-package "SSL_FRONTIER_SELECTION"))
  (shadow 'GetGraded (find-package "SSL_FRONTIER_SELECTION")))
(unless (find-package "SSL_FRONTIER_SELECTION::GETGRADED")
  (make-package "SSL_FRONTIER_SELECTION::GETGRADED"))
(unless (find-package "SSL_FRONTIER_SELECTION::GETGRADEDREQUEST")
  (make-package "SSL_FRONTIER_SELECTION::GETGRADEDREQUEST"))
(unless (find-package "SSL_FRONTIER_SELECTION::GETGRADEDRESPONSE")
  (make-package "SSL_FRONTIER_SELECTION::GETGRADEDRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass ssl_frontier_selection::GetGradedRequest
  :super ros::object
  :slots ())

(defmethod ssl_frontier_selection::GetGradedRequest
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

(defclass ssl_frontier_selection::GetGradedResponse
  :super ros::object
  :slots (_ids _points ))

(defmethod ssl_frontier_selection::GetGradedResponse
  (:init
   (&key
    ((:ids __ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:points __points) ())
    )
   (send-super :init)
   (setq _ids __ids)
   (setq _points __points)
   self)
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; int32[] _ids
    (* 4    (length _ids)) 4
    ;; geometry_msgs/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _ids
     (write-long (length _ids) s)
     (dotimes (i (length _ids))
       (write-long (elt _ids i) s)
       )
     ;; geometry_msgs/Point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Point[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass ssl_frontier_selection::GetGraded
  :super ros::object
  :slots ())

(setf (get ssl_frontier_selection::GetGraded :md5sum-) "a4cd76d4eb5970ff195c8d52aacd39f1")
(setf (get ssl_frontier_selection::GetGraded :datatype-) "ssl_frontier_selection/GetGraded")
(setf (get ssl_frontier_selection::GetGraded :request) ssl_frontier_selection::GetGradedRequest)
(setf (get ssl_frontier_selection::GetGraded :response) ssl_frontier_selection::GetGradedResponse)

(defmethod ssl_frontier_selection::GetGradedRequest
  (:response () (instance ssl_frontier_selection::GetGradedResponse :init)))

(setf (get ssl_frontier_selection::GetGradedRequest :md5sum-) "a4cd76d4eb5970ff195c8d52aacd39f1")
(setf (get ssl_frontier_selection::GetGradedRequest :datatype-) "ssl_frontier_selection/GetGradedRequest")
(setf (get ssl_frontier_selection::GetGradedRequest :definition-)
      "# request

---
# response
int32[] ids
geometry_msgs/Point[] points

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get ssl_frontier_selection::GetGradedResponse :md5sum-) "a4cd76d4eb5970ff195c8d52aacd39f1")
(setf (get ssl_frontier_selection::GetGradedResponse :datatype-) "ssl_frontier_selection/GetGradedResponse")
(setf (get ssl_frontier_selection::GetGradedResponse :definition-)
      "# request

---
# response
int32[] ids
geometry_msgs/Point[] points

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :ssl_frontier_selection/GetGraded "a4cd76d4eb5970ff195c8d52aacd39f1")


