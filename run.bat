@echo off
REM Run Jupyter Docker container (Windows .bat equivalent)

REM Set timezone variable
set TZ=America/Sao_Paulo

REM Run the Docker container
REM Note: Adjust the volume path if needed for Windows

docker run ^
 --name jupyter ^
 -p 8888:8888 ^
 -v C:\:/host:ro ^
 -e TZ=%TZ% ^
 -d eduelias/docker-jupyter-opencv
