#!/bin/bash

echo "Installing ssh client"

sudo apt update
sudo apt install openssh-client

echo "Starting ssh agent"

eval "$(ssh-agent -s)"

echo "Generating ssh keys for git"

echo "Enter your email: "

read email

echo $email

ssh-keygen -t ed25519 -C "$email"

echo "Add key to ssh-agent, example: \n ssh-add ~/.ssh/id_ed25519"

brave https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account


