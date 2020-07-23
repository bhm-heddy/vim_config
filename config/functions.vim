" Switch Number Mode
function! NumberToggle()
	if(&relativenumber == 1)
		set norelativenumber
		set number
		highlight LineNr ctermfg=yellow
	else
		set nonumber
		set relativenumber
		highlight LineNr ctermfg=green
	endif
endfunc
nnoremap<leader>n :call NumberToggle()<CR>

function! DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
nnoremap<leader>4 :call DiffWithSaved()<CR>
com! DiffSaved call DiffWithSaved()
