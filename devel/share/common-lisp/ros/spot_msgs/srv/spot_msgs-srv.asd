
(cl:in-package :asdf)

(defsystem "spot_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "ClearBehaviorFault" :depends-on ("_package_ClearBehaviorFault"))
    (:file "_package_ClearBehaviorFault" :depends-on ("_package"))
    (:file "ListGraph" :depends-on ("_package_ListGraph"))
    (:file "_package_ListGraph" :depends-on ("_package"))
    (:file "SetLocomotion" :depends-on ("_package_SetLocomotion"))
    (:file "_package_SetLocomotion" :depends-on ("_package"))
    (:file "SetVelocity" :depends-on ("_package_SetVelocity"))
    (:file "_package_SetVelocity" :depends-on ("_package"))
  ))