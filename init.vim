
set number
set relativenumber

set mouse=a
set nowrap 		"don't wrap long lines
"set cursorline 		"Highlights the cursor
set colorcolumn=80	"Sets column limits at 80characters

"Indentations
set tabstop=4
set shiftwidth=4
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
Plug 'folke/tokyonight.nvim', {'branch':'main'}
Plug 'EdenEast/nightfox.nvim'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-obsession'
"Plug 'severin-lemaignan/vim-minimap'
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  => Splits and Tabbed Files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright

" Remap splits navigation to just CRTL +hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusting split sizes a bit more firendly"
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  => NERDTree 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  => Airline Theme settings 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme='molokai'

set termguicolors
colorscheme nightfox
"Editor's theme


"colorscheme tokyonight
"let g:lightline = {'colorscheme':'tokyonight'}

" Automaically install missing plugins on startup
autocmd VimEnter *
	\	if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
	\|	PlugInstall | q
	\| endif


" Automatically remove numbers when terminal is opened
autocmd TermOpen * setlocal nonumber norelativenumber
