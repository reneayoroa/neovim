
set number
set relativenumber

set mouse=a
set nowrap 		"don't wrap long lines
"set cursorline 		"Highlights the cursor
set colorcolumn=80	"Sets column limits at 80characters

"Indentations
set tabstop=2
set shiftwidth=2
set autoindent
set smarttab

set ignorecase		" Ignore case when search
set smartcase 		" Not ignore Case if there is higher case

set spelllang=en	" Uses dictionaries to correct words

call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'  "fuzzy find files
Plug 'preservim/nerdtree'		"NerdTree
Plug 'vim-airline/vim-airline'	"Airline
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide//coc.nvim', {'branch':'release'}  "Auto completioon
Plug 'tc50cal/vim-terminal' "Vim Terminal
Plug 'tpope//vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'		" Surrounding ysw	
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-devicons'	" Developer Icons 
call plug#end()

