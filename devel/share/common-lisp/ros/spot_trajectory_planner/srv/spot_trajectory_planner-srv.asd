
(cl:in-package :asdf)

(defsystem "spot_trajectory_planner-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "AddSavePoint" :depends-on ("_package_AddSavePoint"))
    (:file "_package_AddSavePoint" :depends-on ("_package"))
    (:file "BuildTrajectory" :depends-on ("_package_BuildTrajectory"))
    (:file "_package_BuildTrajectory" :depends-on ("_package"))
  ))