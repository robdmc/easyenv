#! /usr/bin/env bash

compose_file="../docker-compose.yml"

# Install conda into the container
docker-compose -f $compose_file down || true
docker volume rm easyenv_opt  || true
docker volume create easyenv_opt
docker-compose -f $compose_file run --rm shell bash /docker/initialize/container_scripts/install_conda.sh
docker-compose -f $compose_file run --rm shell bash /docker/initialize/container_scripts/build_environment.sh

# Initialize ssh
docker-compose -f $compose_file down || true
docker volume rm easyenv_ssh  || true
docker volume create easyenv_ssh
docker-compose -f $compose_file run --rm shell ssh-keygen -q -t rsa -N '' -f /root/.ssh/id_rsa

