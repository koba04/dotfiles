autoload -U compinit
compinit
export LANG=ja_JP.UTF-8
export WORDCHARS='*?_-.[]~&;!#$%^(){}<>'

# prompt
PROMPT=$'%{\e[31m%}%n@%m%%%{\e[m%} '
RPROMPT=$'%{\e[32m%}[%1(v|%1v|)%/]%{\e[m%}'
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
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# color
setopt prompt_subst
autoload -U colors
colors
export LSCOLORS=gxfxxxxxcxxxxxxxxxxxxx
export LS_COLORS='di=36:ln=35:ex=32'
zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'ex=32'
zstyle ':completion:*:default' menu select=1
alias ls='ls -G'
#alias ls='ls --color=auto' 

# perl
if [ -e $HOME/perl5/perlbrew/etc/bashrc ] ; then
    source $HOME/perl5/perlbrew/etc/bashrc
fi
export PATH=$HOME/perl5/perlbrew/bin:$HOME/perl5/perlbrew/perls/current/bin:/usr/local/bin:$PATH

alias minicpanm='cpanm --mirror ~/perl5/mirrors/minicpan --mirror-only'
alias minicpan-outdated='cpan-outdated --mirror file://$HOME/perl5/mirrors/minicpan | minicpanm'
alias pup="plackup -MPlack::App::File -e 'Plack::App::File->new(root => \".\");'"

# ruby
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi

# git
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '%b '
zstyle ':vcs_info:*' actionformats '%b|%a '
precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}

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

# node.js
export PATH=$HOME/.nodebrew/current/bin:$PATH
export NODE_PATH=$HOME/.nodebrew/current/lib/node_modules

if [ -e $HOME/.zshrc.local ] ; then
    source $HOME/.zshrc.local
fi
