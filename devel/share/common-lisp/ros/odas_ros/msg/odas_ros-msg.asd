
(cl:in-package :asdf)

(defsystem "odas_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "OdasSsl" :depends-on ("_package_OdasSsl"))
    (:file "_package_OdasSsl" :depends-on ("_package"))
    (:file "OdasSslArrayStamped" :depends-on ("_package_OdasSslArrayStamped"))
    (:file "_package_OdasSslArrayStamped" :depends-on ("_package"))
    (:file "OdasSst" :depends-on ("_package_OdasSst"))
    (:file "_package_OdasSst" :depends-on ("_package"))
    (:file "OdasSstArrayStamped" :depends-on ("_package_OdasSstArrayStamped"))
    (:file "_package_OdasSstArrayStamped" :depends-on ("_package"))
  ))