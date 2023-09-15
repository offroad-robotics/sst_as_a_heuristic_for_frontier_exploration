;; Auto-generated. Do not edit!


(when (boundp 'ssl_frontier_selection::RemoveFrontier)
  (if (not (find-package "SSL_FRONTIER_SELECTION"))
    (make-package "SSL_FRONTIER_SELECTION"))
  (shadow 'RemoveFrontier (find-package "SSL_FRONTIER_SELECTION")))
(unless (find-package "SSL_FRONTIER_SELECTION::REMOVEFRONTIER")
  (make-package "SSL_FRONTIER_SELECTION::REMOVEFRONTIER"))
(unless (find-package "SSL_FRONTIER_SELECTION::REMOVEFRONTIERREQUEST")
  (make-package "SSL_FRONTIER_SELECTION::REMOVEFRONTIERREQUEST"))
(unless (find-package "SSL_FRONTIER_SELECTION::REMOVEFRONTIERRESPONSE")
  (make-package "SSL_FRONTIER_SELECTION::REMOVEFRONTIERRESPONSE"))

(in-package "ROS")





(defclass ssl_frontier_selection::RemoveFrontierRequest
  :super ros::object
  :slots (_id ))

(defmethod ssl_frontier_selection::RemoveFrontierRequest
  (:init
   (&key
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ssl_frontier_selection::RemoveFrontierResponse
  :super ros::object
  :slots (_success ))

(defmethod ssl_frontier_selection::RemoveFrontierResponse
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

(defclass ssl_frontier_selection::RemoveFrontier
  :super ros::object
  :slots ())

(setf (get ssl_frontier_selection::RemoveFrontier :md5sum-) "f66e2f1a2389241ede90395037adaed8")
(setf (get ssl_frontier_selection::RemoveFrontier :datatype-) "ssl_frontier_selection/RemoveFrontier")
(setf (get ssl_frontier_selection::RemoveFrontier :request) ssl_frontier_selection::RemoveFrontierRequest)
(setf (get ssl_frontier_selection::RemoveFrontier :response) ssl_frontier_selection::RemoveFrontierResponse)

(defmethod ssl_frontier_selection::RemoveFrontierRequest
  (:response () (instance ssl_frontier_selection::RemoveFrontierResponse :init)))

(setf (get ssl_frontier_selection::RemoveFrontierRequest :md5sum-) "f66e2f1a2389241ede90395037adaed8")
(setf (get ssl_frontier_selection::RemoveFrontierRequest :datatype-) "ssl_frontier_selection/RemoveFrontierRequest")
(setf (get ssl_frontier_selection::RemoveFrontierRequest :definition-)
      "# request
int32 id
---
# response
bool success
")

(setf (get ssl_frontier_selection::RemoveFrontierResponse :md5sum-) "f66e2f1a2389241ede90395037adaed8")
(setf (get ssl_frontier_selection::RemoveFrontierResponse :datatype-) "ssl_frontier_selection/RemoveFrontierResponse")
(setf (get ssl_frontier_selection::RemoveFrontierResponse :definition-)
      "# request
int32 id
---
# response
bool success
")



(provide :ssl_frontier_selection/RemoveFrontier "f66e2f1a2389241ede90395037adaed8")


