# docker-prosody
A simple prosody Dockerfile for Debian jessie. 

The image is built from Debian jessie. In order to use it with external host volumes you need to run the container with `-v` switches. 

The volumes on the host need to have permissions so the prosody server inside the container can read them. The container prosody user and group are 104 and 108 respectively. 

For systemd integration see the attached exemplary service file. 

