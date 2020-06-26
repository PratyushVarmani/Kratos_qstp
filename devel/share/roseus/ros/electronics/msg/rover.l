;; Auto-generated. Do not edit!


(when (boundp 'electronics::rover)
  (if (not (find-package "ELECTRONICS"))
    (make-package "ELECTRONICS"))
  (shadow 'rover (find-package "ELECTRONICS")))
(unless (find-package "ELECTRONICS::ROVER")
  (make-package "ELECTRONICS::ROVER"))

(in-package "ROS")
;;//! \htmlinclude rover.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass electronics::rover
  :super ros::object
  :slots (_velocity _distance _position _battery _time_running ))

(defmethod electronics::rover
  (:init
   (&key
    ((:velocity __velocity) (instance geometry_msgs::Twist :init))
    ((:distance __distance) (instance std_msgs::Float64 :init))
    ((:position __position) (instance geometry_msgs::Pose :init))
    ((:battery __battery) (instance std_msgs::Int32 :init))
    ((:time_running __time_running) (instance std_msgs::Time :init))
    )
   (send-super :init)
   (setq _velocity __velocity)
   (setq _distance __distance)
   (setq _position __position)
   (setq _battery __battery)
   (setq _time_running __time_running)
   self)
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:distance
   (&rest __distance)
   (if (keywordp (car __distance))
       (send* _distance __distance)
     (progn
       (if __distance (setq _distance (car __distance)))
       _distance)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:battery
   (&rest __battery)
   (if (keywordp (car __battery))
       (send* _battery __battery)
     (progn
       (if __battery (setq _battery (car __battery)))
       _battery)))
  (:time_running
   (&rest __time_running)
   (if (keywordp (car __time_running))
       (send* _time_running __time_running)
     (progn
       (if __time_running (setq _time_running (car __time_running)))
       _time_running)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Twist _velocity
    (send _velocity :serialization-length)
    ;; std_msgs/Float64 _distance
    (send _distance :serialization-length)
    ;; geometry_msgs/Pose _position
    (send _position :serialization-length)
    ;; std_msgs/Int32 _battery
    (send _battery :serialization-length)
    ;; std_msgs/Time _time_running
    (send _time_running :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Twist _velocity
       (send _velocity :serialize s)
     ;; std_msgs/Float64 _distance
       (send _distance :serialize s)
     ;; geometry_msgs/Pose _position
       (send _position :serialize s)
     ;; std_msgs/Int32 _battery
       (send _battery :serialize s)
     ;; std_msgs/Time _time_running
       (send _time_running :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Twist _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; std_msgs/Float64 _distance
     (send _distance :deserialize buf ptr-) (incf ptr- (send _distance :serialization-length))
   ;; geometry_msgs/Pose _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; std_msgs/Int32 _battery
     (send _battery :deserialize buf ptr-) (incf ptr- (send _battery :serialization-length))
   ;; std_msgs/Time _time_running
     (send _time_running :deserialize buf ptr-) (incf ptr- (send _time_running :serialization-length))
   ;;
   self)
  )

(setf (get electronics::rover :md5sum-) "88cdce70f8f92a71fa841fa7b7186ec4")
(setf (get electronics::rover :datatype-) "electronics/rover")
(setf (get electronics::rover :definition-)
      "geometry_msgs/Twist velocity
std_msgs/Float64 distance
geometry_msgs/Pose position
std_msgs/Int32 battery
std_msgs/Time time_running



================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: std_msgs/Float64
float64 data
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

================================================================================
MSG: std_msgs/Int32
int32 data
================================================================================
MSG: std_msgs/Time
time data

")



(provide :electronics/rover "88cdce70f8f92a71fa841fa7b7186ec4")


