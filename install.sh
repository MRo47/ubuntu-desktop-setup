#!/bin/bash

export RESOURCES="$PWD/resources"
export SCRIPTS="$PWD/install-scripts"

##extract all tars
find $RESOURCES -name '*.tar.xz' -execdir tar -xf '{}' \;

# install git
sudo apt install git

# install build essentials like gcc
sudo apt install build-essential -y

# ##install icons
sh $SCRIPTS/icons.sh

# ##install fonts
sh $SCRIPTS/fonts.sh

# dock settings for showing only workspace related apps
gsettings set org.gnome.shell.extensions.dash-to-dock isolate-workspaces true

# ##Install zsh
sh $SCRIPTS/zsh.sh

# ##install aliases
sh $SCRIPTS/aliases.sh

# ##install vscode
sh $SCRIPTS/vscode.sh

# ##install vscode extensions
sh $SCRIPTS/vscode-extensions.sh

# ##follow vscode gui setup
code

# ##install brave and themes
sh $SCRIPTS/brave.sh
brave

# ##setup git and ssh keys
sh $SCRIPTS/ssh-keygen.sh

# ##tilix
sudo apt install tilix

# ##docker
sh $SCRIPTS/docker.sh
