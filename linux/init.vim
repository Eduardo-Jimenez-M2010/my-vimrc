"linux version

call plug#begin()
"Plug 'eagletmt/neco-ghc'
"Plug 'drewtempelmeyer/palenight.vim'
"Plug 'morhetz/gruvbox'
"Plug 'vim-airline/vim-airline'
"Plug 'wlangstroth/vim-racket'
"Plug 'sheerun/vim-polyglot'
"Plug 'rust-lang/rust.vim'
"Plug 'preservim/tagbar'
"Plug 'universal-ctags/ctags'
"Plug 'luochen1990/rainbow'
"Plug 'vim-syntastic/syntastic'
"Plug 'itchyny/lightline.vim'
"Plug 'tpope/vim-surround'
"Plug 'neoclide/coc.nvim', { 'branch': 'release' }
"Plug 'tommcdo/vim-lion'
"Plug 'Shirk/vim-gas'
"Plug 'ntpeters/vim-better-whitespace'
"Plug 'scrooloose/nerdtree'
"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim', { 'tag':'0.1.0' }
call plug#end()

let mapleader = " "
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>e :e ~/.config/nvim/init.vim<CR>
nmap     <F5> :source ~/.config/nvim/init.vim<CR>

noremap <leader>nt :tabnew<CR>
noremap <leader>ct :tabclose<CR>
noremap <leader>bt :tab split<CR>
noremap <leader>l :tabnext +<CR>
noremap <leader>h :tabnext -<CR>

syntax on

set nu
set rnu
"set cursorline
set encoding=utf-8
"set termguicolors

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set mouse=a
set clipboard=unnamedplus

set nobackup
set nowritebackup
