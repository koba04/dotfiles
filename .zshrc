autoload -U compinit
compinit
export LANG=ja_JP.UTF-8

# prompt
PROMPT=$'%{\e[31m%}%n%%%{\e[m%} '
RPROMPT=$'%{\e[32m%}[%/]%{\e[m%}'
PROMPT2="[%_]%% "

# history
HISTFILE=$HOME/.zsh-history
HISTSIZE=500000
SAVEHIST=500000
setopt hist_ignore_dups
setopt hist_verify
setopt share_history
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end
setopt extended_history

# cd
setopt auto_pushd
setopt pushd_ignore_dups

# Compensation
setopt correct
setopt list_packed
setopt nolistbeep
setopt list_types
setopt auto_list
setopt auto_menu
setopt magic_equal_subst
zstyle ':completion:*:default' menu select=1

# color
setopt prompt_subst
autoload -U colors
colors
export LSCOLORS=gxfxxxxxcxxxxxxxxxxxxx
zstyle ':completion:*' list-colors 'di=36' 'ln=35'
zstyle ':completion:*:default' menu select=1
alias ls='ls -G'

# perl
export PATH=$HOME/perl5/perlbrew/bin:$HOME/perl5/perlbrew/perls/current/bin:/usr/local/bin:$PATH
alias minicpanm='cpanm --mirror ~/perl5/mirrors/minicpan --mirror-only'
alias minicpan-outdated='cpan-outdated --mirror file://$HOME/perl5/mirrors/minicpan | minicpanm'

# android
export PATH=$PATH:$HOME/eclipse/android-sdk-mac_x86/tools

# screen
case "${TERM}" in screen)
    preexec() {
        echo -ne "\ek#${1%% *}\e\\"
    }
    precmd() {
        echo -ne "\ek$(basename $(pwd))\e\\"
    }
esac


