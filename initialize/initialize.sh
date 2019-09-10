#! /usr/bin/env bash

# Nuke and recreate the docker volume
docker-compose down || true

docker volume rm easyenv_opt  || true
docker volume rm easyenv_ssh  || true
docker volume create easyenv_opt
docker volume create easyenv_ssh


# Install conda into the container
docker-compose run --rm shell bash /docker/install_conda.sh

# Set up a unique ssh key
docker-compose run --rm shell ssh-keygen -q -t rsa -N '' -f /root/.ssh/id_rsa

