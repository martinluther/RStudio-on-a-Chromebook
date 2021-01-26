#!/bin/bash

# Add R package repository
. /etc/os-release
echo "deb https://cran.rstudio.com/bin/linux/debian $VERSION_CODENAME-cran35/" | sudo tee -a /etc/apt/sources.list

# Upgrade all OS packages
sudo apt update && sudo apt upgrade

# Install R and RStudio dependencies
sudo apt install r-base r-base-dev libclang-7-dev libclang-dev libpq5 libnss3

# Download and install RStudio
curl -o rstudio.deb https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.4.1103-amd64.deb
sudo dpkg -i rstudio.deb

# Add symlink to Chromebook Downloads folder in Linux home dir
ln -s /mnt/chromeos/MyFiles/Downloads/ Downloads
