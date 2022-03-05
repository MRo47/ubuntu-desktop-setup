#!/bin/bash

cp -r $RESOURCES/scripts/.zsh_aliases ~/

cat <<EOT >> ~/.zshrc
if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi
EOT
