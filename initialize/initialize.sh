#! /usr/bin/env bash

# Put conda on the path
export PATH="/opt/conda/bin:$PATH"

compose_file="../docker-compose.yml"

# Prepare volumes
docker volume rm easyenv_opt 2>/dev/null || true 
docker volume create easyenv_opt

docker volume rm easyenv_ssh 2>/dev/null || true 
docker volume create easyenv_ssh


# Install conda into the container
docker-compose -f $compose_file down || true
docker-compose -f $compose_file run --rm shell bash /docker/initialize/container_scripts/install_conda.sh
docker-compose -f $compose_file run --rm shell bash /docker/initialize/container_scripts/build_environment.sh

# Initialize ssh
docker-compose -f $compose_file down || true
docker-compose -f $compose_file run --rm shell ssh-keygen -q -t rsa -N '' -f /root/.ssh/id_rsa

