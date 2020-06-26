#!/usr/bin/env python
import rospy
from std_msgs.msg import String

def pub_node():
    pub=rospy.Publisher('/new',String,queue_size=10)
    rospy.init_node('pub_node',anonymous=True)
    rate=rospy.Rate(15)
    while not rospy.is_shutdown():
        pub.publish('Hello world!')
        rate.sleep()

if __name__=='__main__':
    try:
        pub_node()
    except rospy.ROSInterruptException:
        pass
