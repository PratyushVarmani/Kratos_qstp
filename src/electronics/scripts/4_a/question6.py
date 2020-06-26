#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry
from tf.transformations import euler_from_quaternion
import math

theta=0.0
def callback(msg):
    global theta
    orient=msg.pose.pose.orientation
    (alpha,beta,theta)=euler_from_quaternion([orient.x,orient.y,orient.z,orient.w])


deg=input(' Enter angle')
rad=math.radians(float(deg))
data=Twist()

rospy.init_node('turn')
pub=rospy.Publisher('/cmd_vel',Twist,queue_size=10)
sub=rospy.Subscriber('/odom',Odometry,callback)
rate=rospy.Rate(10)


while not rospy.is_shutdown():
    if abs(rad-theta)>0.1:
        data.angular.z=0.5
    else:
        data.angular.z=0
    pub.publish(data)
    print rad
    rate.sleep()
