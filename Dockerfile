FROM ros:humble

COPY ./license.dat /license.dat
ENV RTI_LICENSE_FILE=/license.dat

COPY ./ros_entrypoint.sh /ros_entrypoint.sh

ARG RTI_NC_LICENSE_ACCEPTED=yes
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y apt-utils zstd

RUN apt-get update && apt-get install -y \
    ros-${ROS_DISTRO}-demo-nodes-cpp \
    ros-${ROS_DISTRO}-rmw-connextdds
