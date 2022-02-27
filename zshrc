if [ "$PS1" ]; then
	for resource in $HOME/dotfiles/zsh-profile/*; do
		source "$resource"
	done
fi