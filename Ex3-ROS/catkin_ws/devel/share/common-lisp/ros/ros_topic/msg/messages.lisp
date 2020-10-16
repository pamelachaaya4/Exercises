; Auto-generated. Do not edit!


(cl:in-package ros_topic-msg)


;//! \htmlinclude messages.msg.html

(cl:defclass <messages> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass messages (<messages>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <messages>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'messages)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_topic-msg:<messages> is deprecated: use ros_topic-msg:messages instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <messages>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_topic-msg:stamp-val is deprecated.  Use ros_topic-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <messages>) ostream)
  "Serializes a message object of type '<messages>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <messages>) istream)
  "Deserializes a message object of type '<messages>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<messages>)))
  "Returns string type for a message object of type '<messages>"
  "ros_topic/messages")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'messages)))
  "Returns string type for a message object of type 'messages"
  "ros_topic/messages")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<messages>)))
  "Returns md5sum for a message object of type '<messages>"
  "84d365d08d5fc49dde870daba1c7992c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'messages)))
  "Returns md5sum for a message object of type 'messages"
  "84d365d08d5fc49dde870daba1c7992c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<messages>)))
  "Returns full string definition for message of type '<messages>"
  (cl:format cl:nil "time stamp~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'messages)))
  "Returns full string definition for message of type 'messages"
  (cl:format cl:nil "time stamp~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <messages>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <messages>))
  "Converts a ROS message object to a list"
  (cl:list 'messages
    (cl:cons ':stamp (stamp msg))
))
