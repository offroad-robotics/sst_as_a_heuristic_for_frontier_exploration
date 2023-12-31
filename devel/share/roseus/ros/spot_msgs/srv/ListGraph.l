;; Auto-generated. Do not edit!


(when (boundp 'spot_msgs::ListGraph)
  (if (not (find-package "SPOT_MSGS"))
    (make-package "SPOT_MSGS"))
  (shadow 'ListGraph (find-package "SPOT_MSGS")))
(unless (find-package "SPOT_MSGS::LISTGRAPH")
  (make-package "SPOT_MSGS::LISTGRAPH"))
(unless (find-package "SPOT_MSGS::LISTGRAPHREQUEST")
  (make-package "SPOT_MSGS::LISTGRAPHREQUEST"))
(unless (find-package "SPOT_MSGS::LISTGRAPHRESPONSE")
  (make-package "SPOT_MSGS::LISTGRAPHRESPONSE"))

(in-package "ROS")





(defclass spot_msgs::ListGraphRequest
  :super ros::object
  :slots (_upload_filepath ))

(defmethod spot_msgs::ListGraphRequest
  (:init
   (&key
    ((:upload_filepath __upload_filepath) "")
    )
   (send-super :init)
   (setq _upload_filepath (string __upload_filepath))
   self)
  (:upload_filepath
   (&optional __upload_filepath)
   (if __upload_filepath (setq _upload_filepath __upload_filepath)) _upload_filepath)
  (:serialization-length
   ()
   (+
    ;; string _upload_filepath
    4 (length _upload_filepath)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _upload_filepath
       (write-long (length _upload_filepath) s) (princ _upload_filepath s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _upload_filepath
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _upload_filepath (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass spot_msgs::ListGraphResponse
  :super ros::object
  :slots (_waypoint_ids ))

(defmethod spot_msgs::ListGraphResponse
  (:init
   (&key
    ((:waypoint_ids __waypoint_ids) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _waypoint_ids __waypoint_ids)
   self)
  (:waypoint_ids
   (&optional __waypoint_ids)
   (if __waypoint_ids (setq _waypoint_ids __waypoint_ids)) _waypoint_ids)
  (:serialization-length
   ()
   (+
    ;; string[] _waypoint_ids
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _waypoint_ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _waypoint_ids
     (write-long (length _waypoint_ids) s)
     (dolist (elem _waypoint_ids)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _waypoint_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoint_ids (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _waypoint_ids i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass spot_msgs::ListGraph
  :super ros::object
  :slots ())

(setf (get spot_msgs::ListGraph :md5sum-) "f5a4b6eebf7b4418f61ce9162832e5bf")
(setf (get spot_msgs::ListGraph :datatype-) "spot_msgs/ListGraph")
(setf (get spot_msgs::ListGraph :request) spot_msgs::ListGraphRequest)
(setf (get spot_msgs::ListGraph :response) spot_msgs::ListGraphResponse)

(defmethod spot_msgs::ListGraphRequest
  (:response () (instance spot_msgs::ListGraphResponse :init)))

(setf (get spot_msgs::ListGraphRequest :md5sum-) "f5a4b6eebf7b4418f61ce9162832e5bf")
(setf (get spot_msgs::ListGraphRequest :datatype-) "spot_msgs/ListGraphRequest")
(setf (get spot_msgs::ListGraphRequest :definition-)
      "string upload_filepath
---
string[] waypoint_ids


")

(setf (get spot_msgs::ListGraphResponse :md5sum-) "f5a4b6eebf7b4418f61ce9162832e5bf")
(setf (get spot_msgs::ListGraphResponse :datatype-) "spot_msgs/ListGraphResponse")
(setf (get spot_msgs::ListGraphResponse :definition-)
      "string upload_filepath
---
string[] waypoint_ids


")



(provide :spot_msgs/ListGraph "f5a4b6eebf7b4418f61ce9162832e5bf")


