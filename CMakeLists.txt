cmake_minimum_required(VERSION 2.8.3)
project(riemo_move_action)

find_package(catkin REQUIRED COMPONENTS
  actionlib
  actionlib_msgs
  message_generation
  roscpp
  rospy
  std_msgs
  geometry_msgs
  trajectory_msgs
)

## Uncomment this if the package has a setup.py. This macro ensures
## modules and global scripts declared therein get installed
## See http://ros.org/doc/api/catkin/html/user_guide/setup_dot_py.html
# catkin_python_setup()

################################################
## Declare ROS messages, services and actions ##
################################################

## Generate messages in the 'msg' folder
add_message_files(
  FILES
  TrajectoryTiming.msg
)

## Generate services in the 'srv' folder
add_service_files(
  FILES
  QueryTrajectory.srv
  BroadcastTrajectory.srv
)

## Generate actions in the 'action' folder
add_action_files(
  FILES
  Plan.action
)

## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
    actionlib_msgs
    std_msgs
    geometry_msgs
    trajectory_msgs
)

###################################
## catkin specific configuration ##
###################################
catkin_package(
  CATKIN_DEPENDS
    actionlib
    actionlib_msgs
    message_generation
    roscpp
    rospy
    std_msgs
    geometry_msgs
    trajectory_msgs
)

###########
## Build ##
###########

include_directories(
  ${catkin_INCLUDE_DIRS}
)
