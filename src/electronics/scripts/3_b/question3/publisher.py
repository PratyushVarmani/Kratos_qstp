#!/usr/bin/env python

import rospy
from electronics.msg import rover

rospy.init_node("rover")
pub=rospy.Publisher("/rover",rover,queue_size=10)
rate=rospy.Rate(10)
msg=rover()

while not rospy.is_shutdown():
	pub.publish(msg)								#call the publish() method of pub object to publish messages on topic
	rate.sleep()
