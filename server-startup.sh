#!/bin/bash 

sudo timedatectl set-timezone America/Denver

sudo apt-get update
sudo apt-get install git -y

git config --global user.name ziggy
git config --global user.email zmspp9@gmail.com

git clone https://github.com/zmspp9/server-startup.git