#!/bin/sh -e

docker run \
 --name jupyter \
 -p 8888:8888 \
 -v /:/host:ro \
 -e TZ=America/Sao_Paulo \
 -d eduelias/docker-jupyter-opencv