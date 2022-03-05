#!/bin/bash

export RESOURCES="$PWD/resources"
export SCRIPTS="$PWD/scripts"

##install theme
sh $SCRIPTS/install-themes.sh

##need to logout for extension to work

##now follow gui setup

##install fonts
sh $SCRIPTS/install-fonts.sh

##Install zsh
sh $SCRIPTS/install-zsh.sh

##install aliases
sh $SCRIPTS/install-aliases.sh

##install vscode

##follow vscode gui setup

##install vscode extensions

##install miniconda and set paths

##install latest opencv

##install brave and themes

##setup git and ssh keys