#!/bin/bash

git pull

rm -f "$HOME/.bash_profile"
rm -f "$HOME/.bashrc"
rm -f "$HOME/.pryrc"

ln -s "$(pwd)/bash_profile" "$HOME/.bash_profile"
ln -s "$(pwd)/bashrc" "$HOME/.bashrc"
ln -s "$(pwd)/pryrc" "$HOME/.pryrc"

source ~/.bash_profile