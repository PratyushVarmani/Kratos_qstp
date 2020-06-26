#!/usr/bin/env python
import rospy
from std_msgs.msg import String

def callback(msg):
    print msg

def sub_node():
    rospy.init_node('sub_node',anonymous=True)
    rospy.Subscriber('/new', String, callback)
    rospy.spin()

if __name__=='__main__':
    sub_node()
