#!/bin/bash

FONTDIR="/usr/local/share/fonts/OpenType"

sudo mkdir -p $FONTDIR
sudo cp -r $RESOURCES/fonts/SFMonoPowerline $FONTDIR
sudo cp -r $RESOURCES/fonts/SFCompact $FONTDIR
sudo cp -r $RESOURCES/fonts/SFPro $FONTDIR
sudo fc-cache -fv