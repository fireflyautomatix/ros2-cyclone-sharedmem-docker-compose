FROM ros:galactic
ARG RTI_NC_LICENSE_ACCEPTED=yes
RUN apt-get update && apt-get install -y \
    ros-${ROS_DISTRO}-demo-nodes-cpp \
    ros-${ROS_DISTRO}-rmw-connextdds