# A Docker-Based Environment for Data Science

One of the most common challenges faced by those who teach data science is providing reliable, reproducible environments for their students to work in.  [Anaconda](https://www.anaconda.com/) has done an amazing job of easing this pain, but the diversity caused by students running different operating systems with different configurations still causes problems.  This project is an attempt to leverage [Docker](https://www.docker.com/products/docker-desktop) for creating a reproducible linux environment that is guarenteed to be identical across any number of users.

## Prerequisits
* Operating systems:  **Windows 10 Pro** or **Mac-OSX**  (Linux also ok, but only Windows/Mac instructions provided)
* A [Docker Installation](https://www.docker.com/products/docker-desktop)

## How it works
Docker is a computer virtualization technology.  It allows you to use your personal computer as a host to any number of virtual computers (aka virtual machines).  In docker parlance, these virtual machines are referred to as "containers".  "Docker images" contain all the necessary instructions your computer needs to boot up a container on your computer in seconds.  This project leverages a custom-built docker image that can start up a container on your own computer with a powerful suite of data-science tools preinstalled.  Here is how it works.

I used the latest stable [Ubuntu operating system](https://hub.docker.com/_/ubuntu) as a base for creating a docker image.  On top of this base, I have run a series of instructions, which you can [see here](https://github.com/robdmc/easyenv/blob/master/build/Dockerfile).  Don't worry if you don't understand them.  They are basically code for customizing the standard ubuntu operating system to add useful data science tools.

This image is maintained in a public docker repository hosted on [docker-hub](https://hub.docker.com/r/robdmc/easyenv).  Your computer will download this image and use it to build a container from which you can run your data-science projects.

# Configuring your computer before installation
The docker container you will run on your computer will reference a main "project" directory.  It is a good idea to keep all of the files related to your work in the container under that directory.  So, for example, lets say you had three data-science projects.  One for weather, one for sports and one for stocks.  You might choose a directory structure that looks something like this on windows.

```
c:
└── linux_projects
    ├── my_weather_analysis
    ├── sports_betting_analysis
    └── stock_portfolio_analysis
```

Or if you are on a mac, and your username is "rob", you might choose

```
/Users/rob
         └── linux_projects
             ├── my_weather_analysis
             ├── sports_betting_analysis
             └── stock_portfolio_analysis
```

For the purpose of this documentation, we will be calling this your "project root" directory and the instructions below will assume project roots of  `c:\linux_projects` for Windows and `/Users/rob/linux_projects` for mac.  You are, of course, free to choose any other location you want for these.  Just adjust the instructions accordingly.

# Windows Installation
Directory stucture:  Suggest making `~/easyenv` or `c:\easyenv`

# Mac OSX Installation
Directory stucture:  Suggest making `~/easyenv` or `c:\easyenv`



# Delete this
* Install Docker
* Allow host access
* Download zip file into `c:` drive and unzip to create `c:\easyenv`  (can use github if you prefer)
* Edit the docker-compose file to reflect project directory (maybe make this a bat file prompt)
* Run init script
* Make shortcuts to start_notebook.bat and start_shell.bat


