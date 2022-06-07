#!/bin/bash

if ! [ -x "$(command -v docker)" ]; then
    echo "Installing docker"

    sudo apt-get update

    sudo apt-get install \
        ca-certificates \
        curl \
        gnupg \
        lsb-release

    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

    echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

    sudo apt-get update
    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
    # command
fi

sudo systemctl stop docker.service
sudo systemctl stop docker.socket

#change path
sudo sed -i -r 's+ExecStart=/usr/bin/dockerd -H fd://+ExecStart=/usr/bin/dockerd -g '$HOME'/.docker_root -H fd://+' /lib/systemd/system/docker.service

sudo mkdir $HOME/.docker_root

sudo rsync -aqxP /var/lib/docker/ $HOME/.docker_root

sudo systemctl daemon-reload
sudo systemctl start docker

sudo rm -rf /var/lib/docker/