#! /usr/bin/env bash

compose_file="../docker-compose.yml"

# Rebuild conda environment
docker-compose -f $compose_file run --rm shell bash /docker/initialize/container_scripts/build_environment.sh
