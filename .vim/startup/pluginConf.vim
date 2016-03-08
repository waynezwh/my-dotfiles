" ===================== configurations for PowerLine =====================
" 
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2
set encoding=utf-8
set guifont=Ubuntu\ Mono\ for\ VimPowerline\ 12
set noshowmode      " No show INSERT/NORMAL state in left-bottom conner
set t_Co=256
"set term=xterm-256color
let g:Powerline_symbols='fancy'
let Powerline_symbols='compatible'

" ===================== configurations for  NERDTree =====================
" 
" let NERDTreeIgnore = ['*.o']

" ===================== configurations for solarized colorscheme =====================
"
" set color thme to solarized dark
set background=dark
let g:solarized_termcolors=256
try
    colorscheme solarized
catch
endtry

" ===================== configurations for taglist ====================
"
" show tagbar on the left
let g:tagbar_left = 1
" shows tags for only one file
let Tlist_Show_One_File = 1
" exits vim if only taglist window is the last one
let Tlist_Exit_OnlyWindow = 1
let s:tlist_def_cpp_settings = 'c++;n:namespace;v:variable;d:macro;t:typedef;' . 
                              \'c:class;g:enum;s:struct;u:union;f:function;m:member;' .
                              \'p:prototype'

