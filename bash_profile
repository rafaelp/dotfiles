# Bash profile by Tapajos
# Modified by Rafael Lima

if [ "$PS1" ]; then
	for resource in $HOME/dotfiles/profile/*; do
		source "$resource"
	done
fi

export PATH="/usr/local/opt/libiconv/bin:$PATH"

