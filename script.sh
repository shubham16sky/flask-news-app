#!/bin/bash

container=`sudo docker ps | awk '{print $NF}' | awk '(NR>1)' | grep -E "testing"`


if [ ! -z "$container" ]
then
        sudo docker stop testing && sudo docker rm testing
else
        sudo docker run --name "testing" --detach  flask-ci-cd
