#include "ros/ros.h"
#include "ros_topic/messages.h"

void chatterCallback(const ros_topic::messages::ConstPtr& msg)
{
  ROS_INFO("Time is = %d", msg->stamp.sec);
}

int main(int argc, char **argv)
{

  ros::init(argc, argv, "listener");


  ros::NodeHandle nh;


  ros::Subscriber ros_listener = nh.subscribe("topic_message", 1000, chatterCallback);


  ros::spin();

  return 0;
}