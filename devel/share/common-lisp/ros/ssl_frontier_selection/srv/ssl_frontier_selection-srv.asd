
(cl:in-package :asdf)

(defsystem "ssl_frontier_selection-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "CheckCollision" :depends-on ("_package_CheckCollision"))
    (:file "_package_CheckCollision" :depends-on ("_package"))
    (:file "GetGraded" :depends-on ("_package_GetGraded"))
    (:file "_package_GetGraded" :depends-on ("_package"))
    (:file "PruneFrontiers" :depends-on ("_package_PruneFrontiers"))
    (:file "_package_PruneFrontiers" :depends-on ("_package"))
    (:file "RemoveFrontier" :depends-on ("_package_RemoveFrontier"))
    (:file "_package_RemoveFrontier" :depends-on ("_package"))
    (:file "StampMap" :depends-on ("_package_StampMap"))
    (:file "_package_StampMap" :depends-on ("_package"))
  ))