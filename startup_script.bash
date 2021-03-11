#!/usr/bin/env bash
# REMEMBER TO CREATE volume FOLDER WHERE YOU WANT TO DEVELOP
if [ ! "$(docker ps -q -f name=ros-dev)" ]; 
	then
		if [ "$(docker ps -aq -f status=exited -f name=ros-dev)" ]; 
			then
				docker start -i ros-dev
			else
				docker run -it --name ros-dev -v $(pwd)/volume:/ws hannu/ros-dev:1.0.0
		fi
	else
		docker exec -it ros-dev bash
fi
