
(cl:in-package :asdf)

(defsystem "ros_topic-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "messages" :depends-on ("_package_messages"))
    (:file "_package_messages" :depends-on ("_package"))
  ))