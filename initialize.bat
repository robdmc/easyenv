rem Reinitialize a clean docker volume and install conda
cmd.exe /c docker volume erase easyenv_opt
docker volume create easyenv_opt
docker pull robdmc/easyenv:latest
docker-compose run --rm shell bash /build/install_conda.sh
