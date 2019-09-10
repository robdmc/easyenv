#! /usr/bin/env bash

compose_file="../docker-compose.yml"

# Nuke and recreate the docker volume
docker-compose -f $compose_file down || true

# Install conda into the container
bash update_environment.sh

# Initialize ssh
docker volume rm easyenv_ssh  || true
docker volume create easyenv_ssh
docker-compose -f $compose_file run --rm shell ssh-keygen -q -t rsa -N '' -f /root/.ssh/id_rsa

