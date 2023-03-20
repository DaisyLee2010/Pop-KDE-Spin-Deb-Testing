#!/bin/bash

# Add Kubuntu 22.04 experimental PPA
sudo add-apt-repository -y ppa:kubuntu-ppa/experimental

# Add popdev:KDE repository
sudo apt-manage add popdev:KDE

# Update package list
sudo apt update -y

# Upgrade packages
sudo apt upgrade -y

# Install Pop!_OS KDE desktop
sudo apt install -y pop-desktop-kde

# Set the default SDDM theme to Breeze
sudo sed -i 's/Current=.*/Current=breeze/g' /etc/sddm.conf.d/pop.conf

# Reboot the machine
sudo reboot
