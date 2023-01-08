#!/bin/bash

# Add R package repository
. /etc/os-release
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key '95C0FAF38DB3CCAD0C080A7BDC78B2DDEABC47B7'
echo "deb https://cran.rstudio.com/bin/linux/debian $VERSION_CODENAME-cran40/" | sudo tee -a /etc/apt/sources.list

# Upgrade all OS packages
sudo apt update && sudo apt upgrade

# Install R and RStudio dependencies
sudo apt install r-base r-base-dev libclang-dev libpq5 libnss3

# Download and install RStudio
curl -o rstudio.deb https://download1.rstudio.org/electron/bionic/amd64/rstudio-2022.12.0-353-amd64.deb
sudo dpkg -i rstudio.deb

# Add symlink to Chromebook Downloads folder in Linux home dir
ln -s /mnt/chromeos/MyFiles/Downloads/ Downloads
