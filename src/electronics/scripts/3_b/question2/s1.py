#!/usr/bin/env python
import rospy
from std_msgs.msg import String

class s1:
    colour=None

    def callback_colour(self,event):

        if self.colour == 'green':
            self.colour='red'
        else:
            self.colour='green'


    def signal1(self,):
        rospy.init_node('signal1',anonymous=True)
        pub=rospy.Publisher('/s1',String,queue_size=10)
        rate=rospy.Rate(10)
        rospy.Timer(rospy.Duration(10),self.callback_colour)

        while not rospy.is_shutdown():
            pub.publish(self.colour)
            rate.sleep()

if __name__=='__main__':
        try:
            ob1= s1()
            ob1.signal1()
        except rospy.ROSInterruptException:
            pass
