# A Docker-Based Environment for Data Science

One of the biggest challenges faced by those who teach data science is providing reliable, reproducible environments for their students to work in.  [Anaconda](https://www.anaconda.com/) has done an amazing job of easing this pain, but reproducibility is presents a problem as each student will likely be running different versions of different operating systems that have been tweaked in unpredictable ways.  This project is an attempt to leverage [Docker](https://www.docker.com/products/docker-desktop) for creating reproducible linux enviroments for students regardless of their operating system and configuration.

## Prerequisits
* Operating systems:  **Windows 10 Pro** or **Mac-OSX** or **Linux**
* A [Docker Installation](https://www.docker.com/products/docker-desktop)


Think about making this image a zip file that can be dumped into a directory so that users don't have to install github on their pcs


Directory stucture:  Suggest making `~/linux_projects` or `c:\linux_projects`
Directory stucture:  Suggest making `~/easyenv` or `c:\easyenv`

# Windows Instructions
* Install Docker
* Allow host access
* Download zip file into `c:` drive and unzip to create `c:\easyenv`  (can use github if you prefer)
* Edit the docker-compose file to reflect project directory (maybe make this a bat file prompt)
* Run init script
* Make shortcuts to start_notebook.bat and start_shell.bat


