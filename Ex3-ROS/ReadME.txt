This exercise is built using ROS noetic on Windows 10 in C++.

It consists of 2 nodes, one called talker and one called listener.

The caller will send the current time in seconds each second and the listener node will recieve it and display it.
Make sure to build a workspace before running it using catlin_make in catkin_ws. 

Go to devel directory in the ws and setup.bat.

use the command rosrun ros_topic talker in the same directory. Repeat same steps for listener and make sure to run roscore in a new terminal.
run both nodes in parallel.