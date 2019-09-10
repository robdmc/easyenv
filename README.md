# A Docker-Based Environment for Data Science

One of the biggest challenges faced by those who teach data science is providing reliable, reproducible environments for their students to work in.  [Anaconda](https://www.anaconda.com/) has done an amazing job of easing this pain, but reproducibility is presents a problem as each student will likely be running different versions of different operating systems that have been tweaked in unpredictable ways.  This project is an attempt to leverage [Docker](https://www.docker.com/products/docker-desktop) for creating reproducible linux enviroments for students regardless of their operating system and configuration.

## Prerequisits
* Operating systems:  **Windows 10 Pro** or **Mac-OSX** or **Linux**
* A [Docker Installation](https://www.docker.com/products/docker-desktop)


Think about making this image a zip file that can be dumped into a directory so that users don't have to install github on their pcs


Directory stucture:  Suggest making `~/linux_projects` or `c:\linux_projects`
Directory stucture:  Suggest making `~/easyenv` or `c:\easyenv`

## How it works
Docker is a computer virtualization technology.  It allows you to use your personal computer as a host to any number of virtual computers (aka virtual machines).  In docker parlance, these virtual machines are referred to as "containers".  These containers are instantiated by loading information in a "docker image."  So basically, an image contains all the necessary instructions on how to boot up a container on your computer.  And it can do this in just a couple of seconds.

So here is how this project works.  I used the latest stable Ubuntu operating system as a base for creating a docker image.  On top of this base, I have run a series of instructions, which you can [see here](https://github.com/robdmc/easyenv/blob/master/build/Dockerfile).  Don't worry if you don't understand this.  It's basically code to customize the standard ubuntu operating system to have tools that are useful to data science projects.

I built this ubuntu image on my laptop and pushed it up to a public docker repository hosted on [docker-hub](https://hub.docker.com/r/robdmc/easyenv).  Your computer will download this image and use it to build a container in which you can run your data-science projects.


# Windows Instructions
* Install Docker
* Allow host access
* Download zip file into `c:` drive and unzip to create `c:\easyenv`  (can use github if you prefer)
* Edit the docker-compose file to reflect project directory (maybe make this a bat file prompt)
* Run init script
* Make shortcuts to start_notebook.bat and start_shell.bat


