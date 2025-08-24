#!/bin/sh -e

docker run \
 --name jupyter \
 -p 8888:8888 \
 -v [host-dir]:[container-dir]:rw \
 -e TZ=Europe/Amsterdam \
 -d eduelias/jupyter