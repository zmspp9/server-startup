#!/bin/bash

# https://askubuntu.com/questions/15520/how-can-i-tell-ubuntu-to-do-nothing-when-i-close-my-laptop-lid
# https://www.freedesktop.org/software/systemd/man/logind.conf.html

NEW_BEHAVIOR='ignore'
sudo sed -i "s/^#HandleLidSwitch=.*/HandleLidSwitch=${NEW_BEHAVIOR}/" /etc/systemd/logind.conf
sudo sed -i "s/^#HandleLidSwitchExternalPower=.*/HandleLidSwitchExternalPower=${NEW_BEHAVIOR}/" /etc/systemd/logind.conf
sudo service systemd-logind restart
