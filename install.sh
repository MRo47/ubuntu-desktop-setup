#!/bin/bash

export RESOURCES="$PWD/resources"
export SCRIPTS="$PWD/install-scripts"

##install theme
sh $SCRIPTS/themes.sh

##gnome tweaks
sh $SCRIPTS/gnome-tweaks.sh

##install fonts
sh $SCRIPTS/fonts.sh

##now follow gui setup for gnome
gnome-extensions-app
gnome-tweaks

##Install zsh
sh $SCRIPTS/zsh.sh

##install aliases
sh $SCRIPTS/aliases.sh

##install vscode
sh $SCRIPTS/vscode.sh

##install vscode extensions
sh $SCRIPTS/vscode-extensions.sh

##follow vscode gui setup
code

##install miniconda and set paths from example files
sh $SCRIPTS/miniconda.sh
gedit ~/.zshrc

##install latest opencv

##install brave and themes
sh $SCRIPTS/brave.sh
brave

##setup git and ssh keys