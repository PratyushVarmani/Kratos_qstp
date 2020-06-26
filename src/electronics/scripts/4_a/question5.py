#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry

x=0.0
def callback(msg):
    global x

    x=msg.pose.pose.position.x

rospy.init_node("move")
sub= rospy.Subscriber('/odom',Odometry,callback)

pub=rospy.Publisher('/cmd_vel',Twist,queue_size=10)


data=Twist()
lin=data.linear
ang=data.angular
rate=rospy.Rate(10)

while not rospy.is_shutdown():

    if x<5.0:
        lin.x=0.20

    else:
        lin.x=0.0
        

    pub.publish(data)
    rate.sleep()
