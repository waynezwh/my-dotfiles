set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
let path='~/.vim/plugins'
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin(path)

" My bundle here:
"
" original repos on github
Plugin 'VundleVim/Vundle.vim' " Vundle itself
" Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'junegunn/vim-easy-align'
Plugin 'majutsushi/tagbar'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'Rip-Rip/clang_complete'
Plugin 'jlanzarotta/bufexplorer'
" Unite
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/unite.vim'

let g:unite_source_history_yank_enable = 1
try
    let g:unite_source_rec_async_command='ag --nocolor --nogroup -g ""'
    call unite#filters#matcher_default#use(['matcher_fuzzy'])
catch
endtry
" search a file in the filetree
" nnoremap <space><space> :split<cr> :<C-u>Unite -start-insert file_rec/async<cr>
nnoremap <space><space> :<C-u>Unite -start-insert file_rec/async<cr>

" " reset not it is <C-l> normally
" :nnoremap <space>r <Plug>(unite_restart)

Plugin 'rking/ag.vim'
" --- type ° to search the word in all files in the current dir
nmap ° :Ag <c-r>=expand("<cword>")<cr><cr>
nnoremap <space>/ :Ag
"......................................
" vim scripts repos
"Plugin 'taglist.vim'
"......................................
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
"......................................
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

" Load custom settings
" wayne's key mapping
source ~/.vim/startup/setting.vim
source ~/.vim/startup/mappings.vim
"source ~/.vim/startup/taglist.vim
source ~/.vim/startup/pluginConf.vim
