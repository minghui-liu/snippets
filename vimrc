set nocompatible    " required
filetype off        " required

" set the runtime path to inclue Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manager Vundle, required
Plugin 'gmarik/Vundle.vim'
" add all your plugins here
" Plugin 'tmhedberg/SimpylFold'
Plugin 'tpope/vim-fugitive'
" airline status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" nerd tree file browser
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
" Plugin 'vim-scripts/indentpython.vim'

" all plugins must be added before this line
call vundle#end()
filetype plugin indent on   " required


syntax on
set number
set showmatch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" python files
au BufNewFile,BufRead *.py
            \set tabstop=4
            \set softtabstop=4
            \set shiftwidth=4
            \set textwidth=79
            \set expandtab
            \set autoindent
            \set fileformat=unix

" c files
au BufNewFile,BufRead *.c
	\set tabstop=4
	\set softtabstop=4
	\set shiftwidth=4
	\set expandtab
	\set cindent
	\set smartindent
	\set autoindent

" split
set splitbelow
set splitright
" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" code folding
set foldmethod=indent
set foldlevel=99
" enable folding with spacebar
nnoremap <space> za

" open nerdtree with ctrl+n
map <C-n> :NERDTreeToggle<CR>
" hide .pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] 
