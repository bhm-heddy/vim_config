" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" For plug-ins to load correctly.
filetype plugin indent on

"Activation indentation
filetype plugin indent on
set smartindent

"Non-expanded 4 wide tabulations
set tabstop=4
set shiftwidth=4
set noexpandtab

"Real-world encoding
set encoding=utf-8

"Interpret modelines in files
set modelines=1

"Do not abandon buffers
set hidden

"Don't bother throttling tty
set ttyfast

"Initialization MapLeader  {'\' > ',') ?
"let mapleader = ','

" Turn on syntax highlighting.
syntax on

" Turn on number (see function)
set relativenumber numberwidth=3
set number

" Highlight number
highlight LineNr term=bold cterm=NONE ctermfg=green ctermbg=NONE gui=NONE guifg=green guibg=NONE

" Turn on mouse
set mouse=a

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=3

" Status bar
set laststatus=2

" Set status line display
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" Display options   ????????????????????
set showmode
set showcmd
set showmatch

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

" Display different types of white spaces.
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Highlight matching search patterns
set hlsearch

" Enable incremental search
set incsearch

" Include matching uppercase words with lowercase search term
set ignorecase

" Include only uppercase words with uppercase search term
set smartcase

" Not cut word end line
set linebreak

" highlight current line
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=24

" Delete
set backspace=indent,eol,start


" Folding
if has ('folding')
	if has ('windows')
		set fillchars=vert:\│ 			"Box drawing
		set fillchars+=fold:∙
		hi VertSplit term=NONE cterm=NONE gui=NONE guifg=bg guibg=bg
	endif
	set foldenable
	set foldnestmax=1
	set foldmethod=syntax
endif
