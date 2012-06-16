#!/bin/bash

git pull

rm -f "$HOME/.bash_profile"
rm -f "$HOME/.bashrc"

ln -s "$(pwd)/bash_profile" "$HOME/.bash_profile"
ln -s "$(pwd)/bashrc" "$HOME/.bashrc"

source ~/.bash_profile