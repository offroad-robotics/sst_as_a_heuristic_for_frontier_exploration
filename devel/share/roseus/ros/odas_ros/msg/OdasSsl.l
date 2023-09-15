;; Auto-generated. Do not edit!


(when (boundp 'odas_ros::OdasSsl)
  (if (not (find-package "ODAS_ROS"))
    (make-package "ODAS_ROS"))
  (shadow 'OdasSsl (find-package "ODAS_ROS")))
(unless (find-package "ODAS_ROS::ODASSSL")
  (make-package "ODAS_ROS::ODASSSL"))

(in-package "ROS")
;;//! \htmlinclude OdasSsl.msg.html


(defclass odas_ros::OdasSsl
  :super ros::object
  :slots (_x _y _z _E ))

(defmethod odas_ros::OdasSsl
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:E __E) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _E (float __E))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:E
   (&optional __E)
   (if __E (setq _E __E)) _E)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _E
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _E
       (sys::poke _E (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _E
     (setq _E (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get odas_ros::OdasSsl :md5sum-) "da04e2eb0c067758372e166e0d3d06bb")
(setf (get odas_ros::OdasSsl :datatype-) "odas_ros/OdasSsl")
(setf (get odas_ros::OdasSsl :definition-)
      "float64 x
float64 y
float64 z
float64 E

")



(provide :odas_ros/OdasSsl "da04e2eb0c067758372e166e0d3d06bb")


