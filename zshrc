if [ "$PS1" ]; then
	for resource in $HOME/dotfiles/zsh-profile/*; do
		source "$resource"
	done
fi
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# Added by git-ai installer on Seg  9 Fev 2026 16:00:46 -03
export PATH="/Users/rafael/.git-ai/bin:$PATH"
export PATH="/opt/homebrew/opt/binutils/bin:$PATH"

# Added by Antigravity
export PATH="/Users/rafael/.antigravity/antigravity/bin:$PATH"
