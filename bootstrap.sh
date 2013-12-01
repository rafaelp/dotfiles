#!/bin/bash

git pull

for FILE in bash_profile pryrc tm_properties gitconfig irbrc my.cnf gemrc
do
	rm -f "$HOME/.$FILE"
	ln -s "$(pwd)/$FILE" "$HOME/.$FILE"
	echo 
done

source ~/.bash_profile