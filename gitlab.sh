#!/bin/sh

docker run \
    --detach \
    --restart always \
    --hostname localhost \
    --publish 443:443 --publish 80:80 --publish 8022:22 \
    --name gitlab \
    --volume /home/tony/Documenti/docker-data/gitlab/config:/etc/gitlab \
    --volume /home/tony/Documenti/docker-data/gitlab/logs:/var/log/gitlab \
    --volume /home/tony/Documenti/docker-data/gitlab/data:/var/opt/gitlab \
    gitlab/gitlab-ce:latest
