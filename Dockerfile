FROM osrf/ros:melodic-desktop

SHELL ["bin/bash","-c"]

RUN mkdir /ws/

RUN git config --global user.name "someone" && git config --global user.email "someone&someplace.com"

RUN apt-get -qq update && \
	apt-get -qq install -y \
	python-catkin-tools

WORKDIR /ws/

