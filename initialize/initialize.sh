#! /usr/bin/env bash

compose_file="../docker-compose.yml"

docker-compose -f $compose_file down  -v
docker-compose -f $compose_file down


# # Install conda into the container
docker-compose -f $compose_file run --rm shell bash /docker/initialize/container_scripts/install_conda.sh
docker-compose -f $compose_file run --rm shell bash /docker/initialize/container_scripts/build_environment.sh

# Initialize ssh
docker-compose -f $compose_file run --rm shell ssh-keygen -q -t rsa -N '' -f /root/.ssh/id_rsa

echo "#! /usr/bin/env bash" > ../start_shell.sh
echo "docker-compose run --rm shell" >> ../start_shell.sh

echo "#! /usr/bin/env bash" > ../start_notebook.sh
echo "docker-compose run --service-ports --rm notebook" >> ../start_notebook.sh

chmod +x ../start_shell.sh
chmod +x ../start_notebook.sh
