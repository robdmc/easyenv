# Pull from the base image
FROM ubuntu:18.04

############################################################
# Install required linux packages
############################################################
RUN apt-get update --fix-missing && \
    apt-get -y install locales python-pip python-dev vim curl tree \
    wget bzip2 ca-certificates libglib2.0-0 libxext6 libsm6 libxrender1 \
    git mercurial subversion nano ssh

# set utf8 default locale lang
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# Put conda on the path
ENV PATH /opt/conda/bin:$PATH

# Add files
ADD ./files/.bash_profile /root/.bash_profile
ADD ./files/.bashrc /root/.bashrc
ADD ./files/.inputrc /root/.inputrc
ADD ./files/.vimrc /root/.vimrc

# This directory will get overridden by volume mount
# But this sets up simlink for gitconfig
RUN mkdir -p /docker/container_files/root && \ 
touch /docker/container_files/root/.gitconfig && \
touch /docker/container_files/root/.bash_history && \
ln -s /docker/container_files/root/.gitconfig /root && \
ln -s /docker/container_files/root/.bash_history /root

# Prepare for conda intall
RUN mkdir $HOME/.conda && \
    echo "conda activate viz" >> ~/.bashrc


# Set the working directory
WORKDIR /root
