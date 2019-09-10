#! /usr/bin/env bash

compose_file="../docker-compose.yml"

# Nuke and recreate the docker volume
docker-compose -f $compose_file down || true

# # Install conda into the container
docker volume rm easyenv_opt  || true
docker volume create easyenv_opt
docker-compose -f $compose_file run --rm shell bash /docker/initialize/install_conda.sh
