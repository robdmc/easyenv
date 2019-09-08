# Pull from the base image
FROM ubuntu:18.04

############################################################
# Install required linux packages
############################################################
RUN apt-get update --fix-missing && \
    apt-get -y install locales python-pip python-dev vim curl tree \
    wget bzip2 ca-certificates libglib2.0-0 libxext6 libsm6 libxrender1 \
    git mercurial subversion nano

# set utf8 default locale lang
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# Put conda on the path
ENV PATH /opt/conda/bin:$PATH

# Add files
ADD ./files/environment.yml /root/environment.yml
ADD ./files/.bash_profile /root/.bash_profile
ADD ./files/.bashrc /root/.bashrc
ADD ./files/.inputrc /root/.inputrc
ADD ./files/.vimrc /root/.vimrc
ADD ./files/install_conda.sh /root/install_conda.sh


# Install conda
RUN mkdir $HOME/.conda && \
    echo "conda activate viz" >> ~/.bashrc


# Set the working directory
WORKDIR /root
