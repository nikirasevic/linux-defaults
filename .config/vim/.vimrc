"This is ~/.vimrc file

let mapleader =" "

call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-plug'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'junegunn/goyo.vim'

call plug#end()

" Some basics:
	set number relativenumber

" Enable autocompletion:
	set wildmode=longest,list,full 

"Disable automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Goyo plugin makes text mode readable when writing prose:
	map <leader>f :Goyo \| set linebreak<CR>

" Splits open at the bottom and right:
	set splitbelow splitright


" Shortcutting split navigation, saving a ketpress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l


" Copy selected text to system clipboard (requires gvim installed)
	vnoremap <C-c> "*Y :let @+=@*<CR>
	map <C-v> "+P



