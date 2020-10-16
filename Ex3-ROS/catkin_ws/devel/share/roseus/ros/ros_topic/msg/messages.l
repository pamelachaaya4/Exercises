;; Auto-generated. Do not edit!


(when (boundp 'ros_topic::messages)
  (if (not (find-package "ROS_TOPIC"))
    (make-package "ROS_TOPIC"))
  (shadow 'messages (find-package "ROS_TOPIC")))
(unless (find-package "ROS_TOPIC::MESSAGES")
  (make-package "ROS_TOPIC::MESSAGES"))

(in-package "ROS")
;;//! \htmlinclude messages.msg.html


(defclass ros_topic::messages
  :super ros::object
  :slots (_stamp ))

(defmethod ros_topic::messages
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _stamp __stamp)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_topic::messages :md5sum-) "84d365d08d5fc49dde870daba1c7992c")
(setf (get ros_topic::messages :datatype-) "ros_topic/messages")
(setf (get ros_topic::messages :definition-)
      "time stamp
")



(provide :ros_topic/messages "84d365d08d5fc49dde870daba1c7992c")


