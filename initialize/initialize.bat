set compose_file="..\docker-compose.yml"

docker-compose -f %compose_file% down  -v
docker-compose -f %compose_file% down


rem Install conda into the container
docker-compose -f %compose_file% run --rm shell bash /docker/initialize/container_scripts/install_conda.sh
docker-compose -f %compose_file% run --rm shell bash /docker/initialize/container_scripts/build_environment.sh

rem Initialize ssh
docker-compose -f %compose_file% run --rm shell ssh-keygen -q -t rsa -N '' -f /root/.ssh/id_rsa

rem Make start scripts
echo "docker-compose run --rm shell" > ..\start_shell.bat
echo "docker-compose run --service-ports --rm notebook" > ..\start_notebook.bat

pause


