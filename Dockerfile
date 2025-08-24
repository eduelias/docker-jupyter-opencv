FROM ubuntu:latest

ENV TZ=Europe/Amsterdam
RUN apt update && apt upgrade -y 
RUN apt install -y python3 python3-opencv python3-pip git jupyter

# Copy everything from . to /src inside the container
# COPY . /src
RUN adduser thiago
RUN usermod -aG sudo thiago

USER thiago

ENTRYPOINT [ "jupyter", "notebook", "--ip=0.0.0.0", "--allow-root", "--no-browser" ]

# To see the token, do `docker logs -f <container_id>` then you should see the token