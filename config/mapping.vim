" GESTION PLUGING

" [NERDTree] -> open 
nmap <leader>1 : NERDTree<cr>

" Switch windows
nmap <silent> <S-Up> :wincmd k<CR>
nmap <silent> <S-Down> :wincmd j<CR>
nmap <silent> <S-Left> :wincmd h<CR>
nmap <silent> <S-Right> :wincmd l<CR>

" header 42
nmap <f1> :FortyTwoHeader<CR>

" Ctags
"Ctrl+] - go to definition
"Ctrl+T - Jump back from the definition.
"Ctrl+W Ctrl+] - Open the definition in a horizontal split 

"Ctrl+\ - Open the definition in a new tab
map <C-w><C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

"Alt+] - Open the definition in a vertical split
map <C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

