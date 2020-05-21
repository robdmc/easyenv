# Pull from the base image
FROM ubuntu:20.04

# Add files
ADD ./files/.bash_profile /root/.bash_profile
ADD ./files/.bashrc /root/.bashrc
ADD ./files/.inputrc /root/.inputrc
ADD ./files/.vimrc /root/.vimrc

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm-256color


RUN apt-get update && \
  apt-get install -y python3-dev python3-pip && \
  apt-get install -y locales && \
  ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime && \
  apt-get install -y tzdata && \
  dpkg-reconfigure --frontend noninteractive tzdata && \
  apt-get install -y vim curl tree wget bzip2 ca-certificates git nano ssh && \
  locale-gen en_US.UTF-8 &&\
  wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh && \
  /bin/bash ~/miniconda.sh -b -p /opt/conda && \
  rm ~/miniconda.sh && \
  ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh

# set utf8 default locale lang
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# Set the working directory
WORKDIR /root

# # Build conda environment
# ADD ./files/environment.yml /root/environment.yml
# RUN  /opt/conda/bin/conda update -n base -c defaults conda && \
#   echo "conda activate viz" >> ~/.bashrc && \
#   /opt/conda/bin/conda env update  --file /root/environment.yml && \
#   rm ~/environment.yml

# This call out forces a cache miss for updating the env
# This means that any changes to env file will always get pushed.
ADD "https://www.random.org/cgi-bin/randbyte?nbytes=10&format=h" skipcache

# This should only add updates from the last env build
ADD ./files/environment.yml /root/environment.yml
RUN  /opt/conda/bin/conda update -n base -c defaults conda && \
  echo "conda activate viz" >> ~/.bashrc && \
  /opt/conda/bin/conda env update  --file /root/environment.yml && \
  rm ~/environment.yml

