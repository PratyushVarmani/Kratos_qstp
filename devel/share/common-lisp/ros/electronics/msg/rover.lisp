; Auto-generated. Do not edit!


(cl:in-package electronics-msg)


;//! \htmlinclude rover.msg.html

(cl:defclass <rover> (roslisp-msg-protocol:ros-message)
  ((velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (distance
    :reader distance
    :initarg :distance
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (battery
    :reader battery
    :initarg :battery
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (time_running
    :reader time_running
    :initarg :time_running
    :type std_msgs-msg:Time
    :initform (cl:make-instance 'std_msgs-msg:Time)))
)

(cl:defclass rover (<rover>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rover>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rover)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name electronics-msg:<rover> is deprecated: use electronics-msg:rover instead.")))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <rover>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader electronics-msg:velocity-val is deprecated.  Use electronics-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <rover>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader electronics-msg:distance-val is deprecated.  Use electronics-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <rover>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader electronics-msg:position-val is deprecated.  Use electronics-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'battery-val :lambda-list '(m))
(cl:defmethod battery-val ((m <rover>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader electronics-msg:battery-val is deprecated.  Use electronics-msg:battery instead.")
  (battery m))

(cl:ensure-generic-function 'time_running-val :lambda-list '(m))
(cl:defmethod time_running-val ((m <rover>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader electronics-msg:time_running-val is deprecated.  Use electronics-msg:time_running instead.")
  (time_running m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rover>) ostream)
  "Serializes a message object of type '<rover>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'distance) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'battery) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'time_running) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rover>) istream)
  "Deserializes a message object of type '<rover>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'distance) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'battery) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'time_running) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rover>)))
  "Returns string type for a message object of type '<rover>"
  "electronics/rover")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rover)))
  "Returns string type for a message object of type 'rover"
  "electronics/rover")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rover>)))
  "Returns md5sum for a message object of type '<rover>"
  "88cdce70f8f92a71fa841fa7b7186ec4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rover)))
  "Returns md5sum for a message object of type 'rover"
  "88cdce70f8f92a71fa841fa7b7186ec4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rover>)))
  "Returns full string definition for message of type '<rover>"
  (cl:format cl:nil "geometry_msgs/Twist velocity~%std_msgs/Float64 distance~%geometry_msgs/Pose position~%std_msgs/Int32 battery~%std_msgs/Time time_running~%~%~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/Time~%time data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rover)))
  "Returns full string definition for message of type 'rover"
  (cl:format cl:nil "geometry_msgs/Twist velocity~%std_msgs/Float64 distance~%geometry_msgs/Pose position~%std_msgs/Int32 battery~%std_msgs/Time time_running~%~%~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/Time~%time data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rover>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'distance))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'battery))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'time_running))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rover>))
  "Converts a ROS message object to a list"
  (cl:list 'rover
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':position (position msg))
    (cl:cons ':battery (battery msg))
    (cl:cons ':time_running (time_running msg))
))
