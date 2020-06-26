
(cl:in-package :asdf)

(defsystem "electronics-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "rover" :depends-on ("_package_rover"))
    (:file "_package_rover" :depends-on ("_package"))
  ))