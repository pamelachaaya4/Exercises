# Install script for directory: C:/Users/User/Desktop/Exercises/Ex3-ROS/catkin_ws/src/ros_topic

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/User/Desktop/Exercises/Ex3-ROS/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros_topic/msg" TYPE FILE FILES "C:/Users/User/Desktop/Exercises/Ex3-ROS/catkin_ws/src/ros_topic/msg/messages.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros_topic/cmake" TYPE FILE FILES "C:/Users/User/Desktop/Exercises/Ex3-ROS/catkin_ws/build/ros_topic/catkin_generated/installspace/ros_topic-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "C:/Users/User/Desktop/Exercises/Ex3-ROS/catkin_ws/devel/include/ros_topic")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "C:/Users/User/Desktop/Exercises/Ex3-ROS/catkin_ws/devel/share/roseus/ros/ros_topic")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "C:/Users/User/Desktop/Exercises/Ex3-ROS/catkin_ws/devel/share/common-lisp/ros/ros_topic")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "C:/Users/User/Desktop/Exercises/Ex3-ROS/catkin_ws/devel/share/gennodejs/ros/ros_topic")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "C:/opt/ros/noetic/x64/python.exe" -m compileall "C:/Users/User/Desktop/Exercises/Ex3-ROS/catkin_ws/devel/lib/site-packages/ros_topic")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/site-packages" TYPE DIRECTORY FILES "C:/Users/User/Desktop/Exercises/Ex3-ROS/catkin_ws/devel/lib/site-packages/ros_topic")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "C:/Users/User/Desktop/Exercises/Ex3-ROS/catkin_ws/build/ros_topic/catkin_generated/installspace/ros_topic.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros_topic/cmake" TYPE FILE FILES "C:/Users/User/Desktop/Exercises/Ex3-ROS/catkin_ws/build/ros_topic/catkin_generated/installspace/ros_topic-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros_topic/cmake" TYPE FILE FILES
    "C:/Users/User/Desktop/Exercises/Ex3-ROS/catkin_ws/build/ros_topic/catkin_generated/installspace/ros_topicConfig.cmake"
    "C:/Users/User/Desktop/Exercises/Ex3-ROS/catkin_ws/build/ros_topic/catkin_generated/installspace/ros_topicConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros_topic" TYPE FILE FILES "C:/Users/User/Desktop/Exercises/Ex3-ROS/catkin_ws/src/ros_topic/package.xml")
endif()

