autoload -U compinit
compinit
export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8
export WORDCHARS='*?_-.[]~&;!#$%^(){}<>'

# prompt
PROMPT='%F{red}➜%f  '
RPROMPT=$'${vcs_info_msg_0_}%{\e[32m%}[%~]%{\e[m%}'

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

# like rake install['hoge']
setopt nonomatch

# color
setopt prompt_subst
autoload -U colors
colors
export LSCOLORS=gxfxxxxxcxxxxxxxxxxxxx
export LS_COLORS='di=36:ln=35:ex=32'
zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'ex=32'
zstyle ':completion:*:default' menu select=1
alias ls='ls -G'

# git
autoload -Uz vcs_info
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}"
zstyle ':vcs_info:*' formats "%F{green}%c%u(%b)%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
setopt prompt_subst

# homebrew
export PATH="/opt/homebrew/bin:$PATH"

# nodeenv
eval "$(nodenv init -)"
# rbenv
eval "$(rbenv init -)"

# ghq + peco
alias repo='cd $(ghq list -p | peco)'
# git + peco
alias gco='git co $(git br | peco)'

# rust
export PATH="$HOME/.cargo/bin:$PATH"

if [ -e $HOME/.zshrc.local ] ; then
    source $HOME/.zshrc.local
fi

# direnv
export EDITOR=vim
eval "$(direnv hook zsh)"

bindkey "^A"   beginning-of-line                    # ctrl-a
bindkey "^B"   backward-char                        # ctrl-b
bindkey "^E"   end-of-line                          # ctrl-e
bindkey "^D"   delete-char                          # ctrl-d
bindkey "^K"   kill-line                            # ctrl-k
bindkey "^N"   down-line-or-search                  # ctrl-n
bindkey "^P"   up-line-or-search                    # ctrl-p
bindkey "^R"   history-incremental-search-backward  # ctrl-r
bindkey "^[[B" history-search-forward               # down arrow
bindkey "^[[A" history-search-backward              # up arrow
