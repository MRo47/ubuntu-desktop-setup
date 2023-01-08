#!/bin/bash

sudo apt install -y libimobiledevice6 libimobiledevice-utils
sudo apt install ifuse
sudo mkdir /media/iphone 
sudo chown -R $USER /media/iphone