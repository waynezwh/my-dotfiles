" ===================== key mapping                  =====================
" Unmap the arrow keys
no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>
vno <C-j> <Nop>

no <C-e> <C-e>
no <C-y> <C-y>

" Remapping <Ctrl-c> to <Esc>
imap <C-c> <Esc>
" ino <Esc> <Nop>

" quick brackets pairings
imap <leader>' ''<Esc>i
imap <leader>" ""<Esc>i
imap <leader>( ()<Esc>i
imap <leader>[ []<Esc>i
imap <leader>{ {}<Esc>i
imap <leader>< <><Esc>i

" buffer control shortcuts
" nmap <c-1> :b1<CR>
" nmap <c-2> :b2<CR>
" nmap <c-3> :b3<CR>
" nmap <c-4> :b4<CR>
nmap <C-b> :bp<CR>
nmap <C-n> :bn<CR>
"nmap <C-e> :Explore<CR>

" ===================== key mapping for plugins =====================
" for Tagbar
nmap <F4> :TagbarToggle<CR>

" search a file in the filetree
"nnoremap <space><space> :split<cr> :<C-u>Unite -start-insert<CR>
nnoremap <space><space> :<C-u>Unite -start-insert file_rec/async<cr>
"
nnoremap <space>s :Unite grep:.<CR>
" file_rec/async<cr>
" reset not it is <C-l> normally
" nnoremap <space>r <Plug>(unite_restart)
