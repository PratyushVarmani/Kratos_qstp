#!/usr/bin/env python
import rospy
from std_msgs.msg import String

class s2:

    colour=None


    def callback(self,msg):


        if msg.data=="green":
            self.colour="red"
        elif msg.data =="red":
            self.colour="green"
        print self.colour

    def signal2(self):
        rospy.init_node('signal2',anonymous=True)
        pub=rospy.Publisher('/s2',String,queue_size=10)
        sub=rospy.Subscriber('/s1',String,self.callback)
        rate=rospy.Rate(10)

        while not rospy.is_shutdown():
            pub.publish(self.colour)

            rate.sleep()

if __name__=='__main__':
        try:
            ob1=s2()
            ob1.signal2()
        except rospy.ROSInterruptException:
            pass
