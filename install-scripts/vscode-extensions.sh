#!/bin/bash

#vscode-extensions.txt file can be generated by "code --list-extensions > vscode-extensions.txt"

while read extn; do
  code --install-extension "$extn"
done < $RESOURCES/vscode-extensions.txt
