# Pull from the base image
FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y python3-dev python3-pip

RUN ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install -y tzdata
RUN dpkg-reconfigure --frontend noninteractive tzdata

RUN apt-get install -y vim curl tree wget bzip2 ca-certificates git nano ssh

# Add files
ADD ./files/.bash_profile /root/.bash_profile
ADD ./files/.bashrc /root/.bashrc
ADD ./files/.inputrc /root/.inputrc
ADD ./files/.vimrc /root/.vimrc

ENV TERM xterm-256color


RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh

RUN /bin/bash ~/miniconda.sh -b -p /opt/conda

RUN rm ~/miniconda.sh
RUN ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh


# ############################################################
# # Install required linux packages
# ############################################################
# RUN apt-get update --fix-missing && \
#     apt-get -y install locales python-pip python-dev vim curl tree \
#     wget bzip2 ca-certificates libglib2.0-0 libxext6 libsm6 libxrender1 \
#     git mercurial subversion nano ssh

# # set utf8 default locale lang
# RUN locale-gen en_US.UTF-8
# ENV LANG en_US.UTF-8
# ENV LANGUAGE en_US:en
# ENV LC_ALL en_US.UTF-8

# # Put conda on the path
# ENV PATH /opt/conda/bin:$PATH

# # Add files
# ADD ./files/.bash_profile /root/.bash_profile
# ADD ./files/.bashrc /root/.bashrc
# ADD ./files/.inputrc /root/.inputrc
# ADD ./files/.vimrc /root/.vimrc

# # This directory will get overridden by volume mount
# # But this sets up simlink for gitconfig
# RUN mkdir -p /docker/container_files/root && \ 
# touch /docker/container_files/root/.gitconfig && \
# touch /docker/container_files/root/.bash_history && \
# ln -s /docker/container_files/root/.gitconfig /root && \
# ln -s /docker/container_files/root/.bash_history /root

# # Prepare for conda intall
# RUN mkdir $HOME/.conda && \
#     echo "conda activate viz" >> ~/.bashrc


# # Set the working directory
# WORKDIR /root
