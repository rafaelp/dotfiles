# https://github.com/MateiSirbu/zsh-prompt-git-info
# Needs to install BlexMono NF from https://github.com/ryanoasis/nerd-fonts

autoload -Uz vcs_info
precmd () { vcs_info }
setopt prompt_subst

zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' get-revision true
zstyle ':vcs_info:*' unstagedstr '*'
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:*' formats $'\Uf418 %b%c%u \Uf417 %.7i '
zstyle ':vcs_info:*' actionformats $'\Uf418 %b%c%u (%a) \Uf417 %.7i '
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
+vi-git-untracked(){
    if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
        git status --porcelain | grep '??' &> /dev/null ; then
        hook_com[staged]+='?'
    fi
}

show_folder_glyph () {
    if [ -d .git ] || (git rev-parse --git-dir > /dev/null 2>&1)
    then
        printf $'\ue5fb'; # it's a Git repository
    else
        printf $'\ue5ff'; # it isn't
    fi
}

PS1=$'%{%F{green}%}%n %{%F{cyan}%}$(show_folder_glyph) %1~ %{%F{yellow}%}\$vcs_info_msg_0_%{%f%}%# '