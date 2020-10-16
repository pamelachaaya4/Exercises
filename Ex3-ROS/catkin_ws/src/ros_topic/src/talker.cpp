#include "ros/ros.h"
#include "ros_topic/messages.h"

int main(int argc, char **argv)
{

  ros::init(argc, argv, "talker");
  ros::NodeHandle nh;

  ros::Publisher ros_talker = nh.advertise<ros_topic::messages>("topic_message", 1000);

  ros::Rate loop_rate(1);
  ros_topic::messages msg;
  
  while (ros::ok())
  {
    msg.stamp=ros::Time::now() ;

    ROS_INFO("send msg = %d", msg.stamp.sec);
    ros_talker.publish(msg);

    ros::spinOnce();

    loop_rate.sleep();
    
  }


  return 0;
}