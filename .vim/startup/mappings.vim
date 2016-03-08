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

no <C-e> <C-e>j
no <C-y> <C-y>k

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

