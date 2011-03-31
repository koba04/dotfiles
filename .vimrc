"--------------
" Vim
"--------------

syntax on
" 互換モードオフ
set nocompatible
" BackSpace
set backspace=indent,eol,start
"コマンドラインの履歴の保存数
set history=256
" 保存せずに別バッファファイルを表示
set hidden

set visualbell

"-------------
" 表示系
"-------------

" 行番号
set nu
hi Comment ctermfg=yellow cterm=none
hi Constant ctermfg=green cterm=none
set showmatch
colorscheme darkblue
"タイトルを表示
set title
"ルーラーを表示
set ruler

"常にステータス行を表示
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

" 全角スペース可視化
highlight ZenkakuSpace cterm=underline ctermfg=lightred guibg=darkgray
match ZenkakuSpace /　/

" 行末のスペース
set list
set listchars=tab:\ \ ,eol:\ ,trail:_

" encoding
set fileencoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,cp932
set fileformats=unix,dos,mac
set encoding=utf-8

" file type
filetype plugin on
filetype indent off
autocmd BufNewFile,BufRead *.psgi set filetype=perl
" 補完
"setlocal iskeyword+=:
autocmd FileType perl set isfname-=-

"-------------
" 検索系
"-------------
"検索に大文字を含んでいたら大小区別
set ignorecase
"検索時にインクリメンタルサーチを行う
set smartcase
"検索時にヒット部位の色を変更(<C-L>)解除
set hlsearch

"------------------
" 入力系
"------------------

"タブを空白に置き換える
set expandtab
set tabstop=4
" indent
set noautoindent
set shiftwidth=4

" コマンドライン補完
set wildmenu
set showcmd

" 矢印
map <LEFT> <ESC>:bp<CR>
map <RIGHT> <ESC>:bn<CR>
map <UP> <ESC>:ls<CR>
map <C-LEFT> <ESC>:tabprevious<CR>
map <C-RIGHT> <ESC>:tabnext<CR>
" きいてない
"map <C-UP> <ESC>:tabs<CR>
"map <C-q> <ESC>:tabonly<CR>
