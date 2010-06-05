" 行番号
set nu

" スワップファイルの作成場所
set directory=~/vim/tmp,~/vim,~/tmp

syntax on
hi Comment ctermfg=yellow cterm=none
hi Constant ctermfg=green cterm=none
set showmatch

" BackSpace
set backspace=indent,eol,start

" 互換モードオフ
set nocompatible

" 見た目
colorscheme darkblue
"コマンドをステータス行に表示
set showcmd
"タイトルを表示
set title
"ルーラーを表示
set ruler

"常にステータス行を表示
set laststatus=2
set fileformats=unix,dos,mac
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

"検索に大文字を含んでいたら大小区別
set ignorecase
set smartcase
"検索時にヒット部位の色を変更
set hlsearch
"検索時にインクリメンタルサーチを行う
set incsearch
set showmode

p"コマンドラインの履歴の保存数
set history=256

"タブを空白に置き換える
set expandtab
set tabstop=4
" indent
set shiftwidth=4

highlight ZenkakuSpace cterm=underline ctermfg=lightred guibg=darkgray
match ZenkakuSpace /　/

map <LEFT> <ESC>:bp<CR>
map <RIGHT> <ESC>:bn<CR>
map <UP> <ESC>:ls<CR>

