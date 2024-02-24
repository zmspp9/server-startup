#!/bin/bash

sudo apt update
sudo apt install nfs-common

mkdir ./nas
sudo mount -t nfs 192.168.60.70:/mnt/pve-nas-pool/media /home/ziggy/nas/