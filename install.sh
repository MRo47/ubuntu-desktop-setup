#!/bin/bash

export RESOURCES="$PWD/resources"
export SCRIPTS="$PWD/scripts"

##install fonts
sh $SCRIPTS/install-fonts.sh

##Install zsh
sh $SCRIPTS/install-zsh.sh

##install aliases
sh $SCRIPTS/install-aliases.sh

##install theme
cp -r $RESOURCES/themes/WhiteSur-dark ~/.themes

##install shell theme

##install gnome tweak tool

##install vscode

##setup vscode fonts in 

##install vscode extensions

##install miniconda and set paths

##install latest opencv

##install brave and themes

##setup git and ssh keys