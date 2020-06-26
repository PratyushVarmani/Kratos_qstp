#! /usr/bin/env python
import rospy
from geometry_msgs.msg import Twist

rospy.init_node('move')
pub = rospy.Publisher('/cmd_vel',Twist,queue_size=10)
rate=rospy.Rate(10)
msg=Twist()

rad=input('Enter the radius')
rad=float(rad)
omega=1.0
msg.angular.z=omega
msg.linear.x=rad*omega

while not rospy.is_shutdown():
    pub.publish(msg)
    rate.sleep()
