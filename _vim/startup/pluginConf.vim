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

" ===================== configurations for Unite =====================
"
let g:unite_source_history_yank_enable = 1
try
    let g:unite_source_rec_async_command='ag --nocolor --nogroup -g ""'
    call unite#filters#matcher_default#use(['matcher_fuzzy'])
catch
endtry

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
" let g:clang_complete_copen = 1
" let g:clang_library_path = '/usr/lib/llvm-3.5/lib/libclang.so'
" let g:clang_c_options = '-std=gnu11'
" let g:clang_cpp_options = '-std=c++11 -stdlib=libc++'

" ===================== configurations for YouCompleteMe ====================
" load the .ycm_extra_conf.py file without prompt
" let g:ycm_confirm_extra_conf=0
"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:clang_library_path = "/usr/lib/llvm-3.5/lib/libclang.so.1"

" YouCompleteMe features
let g:ycm_complete_in_comments=1
" let g:ycm_collect_identifiers_from_tags_files=1
" inoremap <leader>; <C-x><C-o>
"
set completeopt-=preview
let g:ycm_min_num_of_chars_for_completion=1
"
let g:ycm_cache_omnifunc=0
"
let g:ycm_seed_identifiers_with_syntax=1
"
let g:ycm_key_invoke_completion = '<M-;>'
"
"nmap <M-g> :YcmCompleter GoToDefinitionElseDeclaration <C-R>=expand("<cword>")<CR><CR>

" ===================== configurations for tagbar ====================
" show tagbar on the left
let g:tagbar_left = 1
" gain focus on open
let g:tagbar_autofocus = 1
" shows tags for only one file
let Tlist_Show_One_File = 1
" exits vim if only taglist window is the last one
let Tlist_Exit_OnlyWindow = 1
let s:tlist_def_cpp_settings = 'c++;n:namespace;v:variable;d:macro;t:typedef;' . 
                              \'c:class;g:enum;s:struct;u:union;f:function;m:member;' .
                              \'p:prototype'

