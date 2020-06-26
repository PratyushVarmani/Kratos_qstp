#!/usr/bin/env python
import rospy
import tf
import geometry_msgs
import numpy
import tf2_ros

def message_from_transform(t):
    msg=geometry_msgs.msg.Transform()
    q=tf.transformations.quaternion_from_matrix(t)
    t=tf.transformations.translation_from_matrix(t)
    msg.translation.x=t[0]
    msg.translation.y=t[1]
    msg.translation.z=t[2]
    msg.rotation.x=q[0]
    msg.rotation.y=q[1]
    msg.rotation.z=q[2]
    msg.rotation.w=q[3]
    return msg



rospy.init_node('solution')
#t1 is transformation matrix from base to camera
t1=tf.transformations.concatenate_matrices(
tf.transformations.translation_matrix((0.0,1.0,1.0)),
tf.transformations.quaternion_matrix(
tf.transformations.quaternion_from_euler(0.9,0.0,0.79))
)

#t2 is the transformation matrix from camera to object

t2=tf.transformations.concatenate_matrices(
tf.transformations.translation_matrix((0.0,1.0,0.0)),
tf.transformations.quaternion_matrix(
tf.transformations.quaternion_about_axis(1.5,(0.0,0.0,1.0)))
)
#t3_mat is the transformation matrix from base to object
t3_mat=t1.dot(t2)
t3=geometry_msgs.msg.TransformStamped()
t3.header.stamp=rospy.Time.now()
t3.header.frame_id='base'
t3.child_frame_id='object'
t3.transform=message_from_transform(t3_mat)
br=tf2_ros.StaticTransformBroadcaster()
br.sendTransform(t3)
rospy.spin()
