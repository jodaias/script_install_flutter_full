#! /bin/bash
###########################################################
# Script for installation: Flutter Lastest Version
# Author: Allan Ramos, GitHub@allansrc
# Target OS: Linux
#----------------------------------------------------------
#
#----------------------------------------------------------
# Usage:
#
# flutter install: exemple: ->
# ./fdev-linux
#
##########################################################

#---------------------------------------------------------
# Update Cache 
#---------------------------------------------------------
echo -e "\n---- Update Cache ----"
sudo apt update

#---------------------------------------------------------
# Install Git
#---------------------------------------------------------
echo -e "\n---- Update Cache ----"
sudo apt install git

#---------------------------------------------------------
# Download Flutter
#---------------------------------------------------------
echo "\n---- Downloading Flutter (stable) -----"
mkdir ~/src-f

cd ~/src-f

echo "\n---- Downloading on '~/src-f' -----"

git clone https://github.com/flutter/flutter.git -b stable


#---------------------------------------------------------
# Add PATH
#---------------------------------------------------------
echo "\n---- adding to PATH ----"
export PATH="$PATH:~/src-f/flutter/bin"

export PATH="$PATH:`pwd`/flutter/bin"

flutter precache
#---------------------------------------------------------
# Add AS
#---------------------------------------------------------
echo "\n---- Downloadin' Android Studio ----"
echo "\n---- You can Cancel the Download: press CTRL+C ----"
sudo apt install snap && sudo snap install android-studio --classic

#---------------------------------------------------------
# test flutter
#---------------------------------------------------------
echo "\n---- Testing installation ----"
flutter doctor

echo "\n---- if your PATH hasn't been updated, run: ----"
echo "\n---- export PATH="$PATH:~/src-f/flutter/bin" >> .bashrc ----"
echo "\n---- or go to: ----"
echo "\n---- https://flutter.dev/docs/get-started/install/linux#update-your-path ----"
echo "\n----  ----"
