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
au BufNewFile,BufRead *.psgi set filetype=perl
au BufNewFile,BufRead *.tx   set filetype=html
au BufNewFile,BufRead *.html set tabstop=2
au BufNewFile,BufRead *.html set shiftwidth=2
au BufNewFile,BufRead *.as   set noexpandtab
au BufNewFile,BufRead *.as   set filetype=actionscript

" 補完
"setlocal iskeyword+=:
au FileType perl set isfname-=-

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
map <UP> <ESC>:bp<CR>
map <DOWN> <ESC>:bn<CR>
"map <UP> <ESC>:ls<CR>
map <LEFT> <ESC>:tabprevious<CR>
map <RIGHT> <ESC>:tabnext<CR>
"map <C-LEFT> <ESC>:tabprevious<CR>
"map <C-RIGHT> <ESC>:tabnext<CR>
" きいてない
"map <C-UP> <ESC>:tabs<CR>
"map <C-q> <ESC>:tabonly<CR>
"
" file type
filetype plugin on
filetype indent off
autocmd BufNewFile,BufRead *.psgi set filetype=perl
autocmd BufNewFile,BufRead *.tx   set filetype=html
autocmd BufNewFile,BufRead *.html set tabstop=2
autocmd BufNewFile,BufRead *.html set shiftwidth=2

" netrwは常にtree view
let g:netrw_liststyle = 3
" 'v'でファイルを開くときは右側に開く。(デフォルトが左側なので入れ替え)
let g:netrw_altv = 1
" 'o'でファイルを開くときは下側に開く。(デフォルトが上側なので入れ替え)
let g:netrw_alto = 1


" plugin
call pathogen#runtime_append_all_bundles()
let g:neocomplcache_enable_at_startup = 1

""" unite.vim
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> ,um :<C-u>Unite file_mru<CR>
nnoremap <silent> ,uu :<C-u>Unite buffer file_mru<CR>
nnoremap <silent> ,ua :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>
" ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
" ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> q
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>q
