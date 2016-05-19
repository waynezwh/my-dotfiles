" =========== feature setting for vim ===================
" freescale's code style
"set tabstop=8
"set shiftwidth=8
"set noexpandtab=8

" wayne's own code style settings
" use a tab width of 4 space chars
set tabstop=4
set shiftwidth=4
"set softtabstop=4
set expandtab
set autochdir
set nohlsearch
set noswapfile

" common settings
 if &term =~ '256color'
     " disable Background Color Erase (BCE) so that color schemes
     " render properly when inside 256-color tmux and GNU screen.
     " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
     set t_ut=
 endif
scriptencoding utf-8
set encoding=utf-8
"set term=screen-256color
"set term=xterm-256color
set textwidth=80 "set textwidth
" allow wildmenu
set wildmenu
set showcmd
set ruler
set incsearch
set linespace=0
set history=1000
set number
set nocompatible
" set list listchars=tab:"*",trail:.,extends:>,precedes:<,eol:¬
set list
set listchars=tab:▸\ ,trail:.,extends:>,precedes:<,eol:¬
" fast sourcings.vimrc
map <silent> <leader>ss :source ~/.vimrc<cr>
" fast opening .vimrc
map <silent> <leader>ee :tabnew ~/.vimrc<cr>
" reload .vimrc once its been changed
" autocmd! bufwritepost .vimrc source ~/.vimrc

