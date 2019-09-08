docker volume erase easyenv_opt 2>/dev/null || 1
docker volume create easyenv_opt
docker build -t easyenv .
#I want to set up bash history saving
#
#I want to set up good paths for projects
#
#I want to set up git init stuff with ssh which means Ill likely need ssh 
#volume linked from host


## Install conda
#mkdir $HOME/.conda && \
#    wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh && \
#    /bin/bash ~/miniconda.sh -b -p /opt/conda && \
#    rm ~/miniconda.sh && \
#    ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh && \
#    conda env create --force -f /root/environment.yml && \
#    echo "conda activate viz" >> ~/.bashrc
#
