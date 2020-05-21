# Install conda
# conda env create --force -f /docker/initialize/environment.yml
/opt/conda/bin/conda update -n base -c defaults conda
/opt/conda/bin/conda env update  --file /docker/initialize/environment.yml
