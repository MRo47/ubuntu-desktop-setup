#!/bin/bash

export RESOURCES="$PWD/resources"
export SCRIPTS="$PWD/install-scripts"

##install theme
sh $SCRIPTS/themes.sh

##gnome tweaks
sh $SCRIPTS/gnome-tweaks.sh

##now follow gui setup for gnome
gnome-extensions-app
gnome-tweaks

##install fonts
sh $SCRIPTS/fonts.sh

##Install zsh
sh $SCRIPTS/zsh.sh

##install aliases
sh $SCRIPTS/aliases.sh

##install vscode
sh $SCRIPTS/vscode.sh

##install vscode extensions
sh $SCRIPTS/vscode-extensions.sh

##follow vscode gui setup
code .

##install miniconda and set paths

##install latest opencv

##install brave and themes

##setup git and ssh keys