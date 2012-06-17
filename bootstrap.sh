#!/bin/bash

git pull

for FILE in bash_profile pryrc
do
	rm -f "$HOME/.$FILE"
	ln -s "$(pwd)/$FILE" "$HOME/.$FILE"
	echo 
done

source ~/.bash_profile