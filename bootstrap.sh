#!/bin/bash

git pull

for FILE in bash_profile pryrc tm_properties gitconfig irbrc my.cnf gemrc
do
	rm -f "$HOME/.$FILE"
	ln -s "$(pwd)/$FILE" "$HOME/.$FILE"
	echo 
done

mkdir -p "$HOME/bin"
for FILE in hh hp hs
do
	ln -s "$(pwd)/bin/$FILE" "$HOME/bin/$FILE"
done

source ~/.bash_profile