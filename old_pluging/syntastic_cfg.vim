"
"
" SYNTASTIC

" Auto update Errors output
let g:syntastic_always_populate_loc_list = 1

" Run syntastic at the opening
let g:syntastic_check_on_open = 1

" Jump curseur at the first detected issue
let g:syntastic_auto_jump = 1

" Not open when close vim
let g:syntastic_check_on_wq = 0

" lopen openning file
"let g:syntastic_auto_loc_list = 1

" Dont know
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_is_open = 0
function! SyntasticToggle()
	if g:syntastic_is_open == 1
		lclose
		let g:syntastic_is_open = 0
	else
		Errors
		let g:syntastic_is_open = 1
	endif
endfunction
map <F3> :call SyntasticToggle()<CR>
