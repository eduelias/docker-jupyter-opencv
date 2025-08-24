#!/bin/sh -e

docker run \
 --name jupyter \
 -p 8888:8888 \
 -v /:/host:ro \ 
 -e TZ=Europe/Amsterdam \
 -d eduelias/docker-jupyter-opencv:latest