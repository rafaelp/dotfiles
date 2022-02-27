# Bash profile by Tapajos
# Modified by Rafael Lima

if [ "$PS1" ]; then
	for resource in $HOME/dotfiles/bash-profile/*; do
		source "$resource"
	done
fi

export PATH="/usr/local/opt/libiconv/bin:$PATH"

export PATH="/usr/local/opt/openjdk/bin:$PATH"

export PATH="/Users/rafael/.local/share/solana/install/active_release/bin:$PATH"
