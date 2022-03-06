#!/bin/bash

#install zsh
sudo apt install zsh
#change default shell
chsh -s $(which zsh)
#install oh my zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"