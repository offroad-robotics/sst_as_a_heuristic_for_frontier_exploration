;; Auto-generated. Do not edit!


(when (boundp 'spot_msgs::MobilityParams)
  (if (not (find-package "SPOT_MSGS"))
    (make-package "SPOT_MSGS"))
  (shadow 'MobilityParams (find-package "SPOT_MSGS")))
(unless (find-package "SPOT_MSGS::MOBILITYPARAMS")
  (make-package "SPOT_MSGS::MOBILITYPARAMS"))

(in-package "ROS")
;;//! \htmlinclude MobilityParams.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass spot_msgs::MobilityParams
  :super ros::object
  :slots (_body_control _locomotion_hint _stair_hint ))

(defmethod spot_msgs::MobilityParams
  (:init
   (&key
    ((:body_control __body_control) (instance geometry_msgs::Pose :init))
    ((:locomotion_hint __locomotion_hint) 0)
    ((:stair_hint __stair_hint) nil)
    )
   (send-super :init)
   (setq _body_control __body_control)
   (setq _locomotion_hint (round __locomotion_hint))
   (setq _stair_hint __stair_hint)
   self)
  (:body_control
   (&rest __body_control)
   (if (keywordp (car __body_control))
       (send* _body_control __body_control)
     (progn
       (if __body_control (setq _body_control (car __body_control)))
       _body_control)))
  (:locomotion_hint
   (&optional __locomotion_hint)
   (if __locomotion_hint (setq _locomotion_hint __locomotion_hint)) _locomotion_hint)
  (:stair_hint
   (&optional (__stair_hint :null))
   (if (not (eq __stair_hint :null)) (setq _stair_hint __stair_hint)) _stair_hint)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _body_control
    (send _body_control :serialization-length)
    ;; uint32 _locomotion_hint
    4
    ;; bool _stair_hint
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _body_control
       (send _body_control :serialize s)
     ;; uint32 _locomotion_hint
       (write-long _locomotion_hint s)
     ;; bool _stair_hint
       (if _stair_hint (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _body_control
     (send _body_control :deserialize buf ptr-) (incf ptr- (send _body_control :serialization-length))
   ;; uint32 _locomotion_hint
     (setq _locomotion_hint (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _stair_hint
     (setq _stair_hint (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get spot_msgs::MobilityParams :md5sum-) "87bda7c4fbd2a6b19bdc029effa9f715")
(setf (get spot_msgs::MobilityParams :datatype-) "spot_msgs/MobilityParams")
(setf (get spot_msgs::MobilityParams :definition-)
      "geometry_msgs/Pose body_control
uint32 locomotion_hint
bool stair_hint

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :spot_msgs/MobilityParams "87bda7c4fbd2a6b19bdc029effa9f715")


