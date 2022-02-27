#!/bin/bash

#git pull

for FILE in pryrc tm_properties gitconfig irbrc my.cnf gemrc zshrc zprofile asdfrc
do
	rm -f "$HOME/.$FILE"
	ln -s "$(pwd)/$FILE" "$HOME/.$FILE"
	echo $FILE;
done

source ~/.zshrc