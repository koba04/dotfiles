syntax on
set nocompatible
set backspace=indent,eol,start
set history=256
" 保存せずに別バッファファイルを表示
set hidden
set visualbell

set nu

set showmatch
set title
set ruler

"常にステータス行を表示
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

" 全角スペース可視化
highlight ZenkakuSpace cterm=underline ctermfg=lightred guibg=darkgray
match ZenkakuSpace /　/

" 行末のスペース
set list
set listchars=tab:>-,eol:\ ,trail:_

" encoding
set fileencoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,cp932
set fileformats=unix,dos,mac
set encoding=utf-8

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
set shiftwidth=4
set noautoindent
autocmd InsertLeave * set nopaste

" コマンドライン補完
set wildmenu
set showcmd

nnoremap <UP> <ESC>:ls<CR>
nnoremap <LEFT> <ESC>:bp<CR>
nnoremap <RIGHT> <ESC>:bn<CR>
nnoremap <C-n> <ESC>:tabnext<CR>
nnoremap <C-p> <ESC>:tabprevious<CR>
nnoremap <C-i> <ESC>:tabnew<CR>
nnoremap <C-a> <ESC>:tabs<CR>
nnoremap <C-q> <ESC>:tabonly<CR>

" file type
filetype plugin on
au BufNewFile,BufRead *.hbs  set filetype=html

" netrwは常にtree view
let g:netrw_liststyle = 3
let g:netrw_altv = 1
let g:netrw_alto = 1


" 環境依存
if filereadable(expand('~/.vimrc.local'))
    source ~/.vimrc.local
endif
" plugin
if filereadable(expand('~/.vimrc.plugin'))
    source ~/.vimrc.plugin
endif
