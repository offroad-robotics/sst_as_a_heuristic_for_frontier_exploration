;; Auto-generated. Do not edit!


(when (boundp 'ssl_frontier_selection::StampMap)
  (if (not (find-package "SSL_FRONTIER_SELECTION"))
    (make-package "SSL_FRONTIER_SELECTION"))
  (shadow 'StampMap (find-package "SSL_FRONTIER_SELECTION")))
(unless (find-package "SSL_FRONTIER_SELECTION::STAMPMAP")
  (make-package "SSL_FRONTIER_SELECTION::STAMPMAP"))
(unless (find-package "SSL_FRONTIER_SELECTION::STAMPMAPREQUEST")
  (make-package "SSL_FRONTIER_SELECTION::STAMPMAPREQUEST"))
(unless (find-package "SSL_FRONTIER_SELECTION::STAMPMAPRESPONSE")
  (make-package "SSL_FRONTIER_SELECTION::STAMPMAPRESPONSE"))

(in-package "ROS")





(defclass ssl_frontier_selection::StampMapRequest
  :super ros::object
  :slots ())

(defmethod ssl_frontier_selection::StampMapRequest
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

(defclass ssl_frontier_selection::StampMapResponse
  :super ros::object
  :slots (_success _msg ))

(defmethod ssl_frontier_selection::StampMapResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _msg (string __msg))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ssl_frontier_selection::StampMap
  :super ros::object
  :slots ())

(setf (get ssl_frontier_selection::StampMap :md5sum-) "e835b04f93d0b30fd8cb71e0967a16db")
(setf (get ssl_frontier_selection::StampMap :datatype-) "ssl_frontier_selection/StampMap")
(setf (get ssl_frontier_selection::StampMap :request) ssl_frontier_selection::StampMapRequest)
(setf (get ssl_frontier_selection::StampMap :response) ssl_frontier_selection::StampMapResponse)

(defmethod ssl_frontier_selection::StampMapRequest
  (:response () (instance ssl_frontier_selection::StampMapResponse :init)))

(setf (get ssl_frontier_selection::StampMapRequest :md5sum-) "e835b04f93d0b30fd8cb71e0967a16db")
(setf (get ssl_frontier_selection::StampMapRequest :datatype-) "ssl_frontier_selection/StampMapRequest")
(setf (get ssl_frontier_selection::StampMapRequest :definition-)
      "# request

---
# response
bool success
string msg
")

(setf (get ssl_frontier_selection::StampMapResponse :md5sum-) "e835b04f93d0b30fd8cb71e0967a16db")
(setf (get ssl_frontier_selection::StampMapResponse :datatype-) "ssl_frontier_selection/StampMapResponse")
(setf (get ssl_frontier_selection::StampMapResponse :definition-)
      "# request

---
# response
bool success
string msg
")



(provide :ssl_frontier_selection/StampMap "e835b04f93d0b30fd8cb71e0967a16db")


