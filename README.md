# docker-prosody
A simple prosody Dockerfile for Debian jessie. Available from docker hub (https://registry.hub.docker.com/u/darek/prosody/).

`docker pull darek/prosody:1.2`

# Running 

The volumes on the host need to have permissions so the prosody server inside the container can read them. The container `prosody` user and group have `uid` `104` and `gid` `108` respectively. 

You can run the container like that:

    docker run -d --name prosody \
    -p 5222:5222 \
    -p 5269:5269 \
    -p 127.0.0.1:5347:5347 \
    -v /data/prosody/conf:/etc/prosody \
    -v /data/prosody/lib:/var/lib/prosody  \
    darek/prosody:1.2 

## Running in systemd

We attach a file to manage the container with systemd. Copy `prosody-container.service` to `/etc/systemd/system` and do:

    sudo systemctl enable prosody-container
    sudo systemctl stary prosody-container
    

# Copyright 

Copyright (c) 2015 by Dariusz Dwornikowski <d.dwornikowski@tenesys.pl>
