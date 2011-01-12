source /etc/profile


## 履歴の保存先
HISTFILE=$HOME/.zsh-history
## メモリに展開する履歴の数
HISTSIZE=100000
## 保存する履歴の数
SAVEHIST=100000

# prompt
PROMPT="[%/]%% "
PROMPT2="[%_]%% "
SPROMPT="%r is correct? [n,y,a,e]: "

## 補完機能の強化
autoload -U compinit
compinit

## 色を使う
setopt prompt_subst
autoload -U colors
colors

## 補完候補一覧でファイルの種別をマーク表示
setopt list_types

## 補完候補を一覧表示
setopt auto_list
## 直前と同じコマンドをヒストリに追加しない
setopt hist_ignore_dups

## cd 時に自動で push
setopt auto_pushd
## 同じディレクトリを pushd しない
setopt pushd_ignore_dups
## TAB で順に補完候補を切り替える
setopt auto_menu
## zsh の開始, 終了時刻をヒストリファイルに書き込む
setopt extended_history
## --prefix=/usr などの = 以降も補完
setopt magic_equal_subst
## ヒストリを呼び出してから実行する間に一旦編集
setopt hist_verify
## ヒストリを共有
setopt share_history
## 補完候補のカーソル選択を有効に
zstyle ':completion:*:default' menu select=1


export PATH=$HOME/perl5/perlbrew/bin:$HOME/perl5/perlbrew/perls/current/bin:/usr/local/bin:$HOME/eclipse/android-sdk-mac_x86/tools:$PATH
alias minicpanm='cpanm --mirror ~/perl5/mirrors/minicpan --mirror-only'
alias minicpan-outdated='cpan-outdated --mirror file:///Users/koba04/perl5/mirrors/minicpan | minicpanm'

