let mapleader = " "

"configuracion de tecla leader y utilerias de init.vim
"reinicia nvim cargando el archivo de configuracion
nmap     <F5> :source ~\AppData\Local\nvim\init.vim<CR>
nmap     <F12>:syntax sync fromstart<CR>
"abre el archivo de configuracion
nnoremap <leader>e :e ~\appdata\local\nvim\init.vim<cr>

"deshabilita las teclas direccionales y las combinaciones más comunes con Ctl
noremap <up>    <nop>
noremap <down>  <nop>
noremap <left>  <nop>
noremap <right> <nop>
noremap <C-z>   <nop>
noremap <C-v>   <nop>

"Configuración de keybendigs de buffers
noremap <leader>buff :buffers <CR>

noremap <leader>j  :bnext<CR>
noremap <leader>k  :bprevious<CR>
noremap <leader>bd :bdelete<CR>

"Configuracion de keybendings de splits
nnoremap <silent> <right>:vertical resize +5<CR>
nnoremap <silent> <left> :vertical resize -5<CR>
nnoremap <silent> <up>   :resize +5         <CR>
nnoremap <silent> <down> :resize -5         <CR>
noremap  <leader>sp      :sp <CR>
noremap  <leader>vs      :vsp<CR>
nnoremap <leader>q       :q  <CR>
nnoremap <leader>w       :w<CR>
nnoremap <leader>t       :term<CR>set rul
nnoremap <C-c>           :<ESC>

"configuracion visual
set number
set relativenumber
set ruler
set termguicolors
set cursorline
set hlsearch
set incsearch
set clipboard=unnamedplus
set mouse=a
set visualbell
set t_Co=256

"vim plug
call plug#begin('~\AppData\Local\nvim-data\site\autoload')
    Plug 'morhetz/gruvbox'
    "Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'scrooloose/nerdtree'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag':'0.1.0' }
    Plug 'scrooloose/syntastic'
    Plug 'vim-airline/vim-airline'
    Plug 'shirk/vim-gas'
    Plug 'sheerun/vim-polyglot'
    Plug 'ryanoasis/vim-devicons'
    Plug 'dracula/vim', { 'name': 'dracula' }
call plug#end()
set runtimepath+=~/.vim/nvim/syntax

"NERDTree plugin
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind  <CR>

"Color Theme
set background=dark
let theme = 'dracula'

if (theme == 'gruvbox')
    colorscheme gruvbox
    let g:gruvbox_contrast_dark='hard'
elseif (theme == 'dracula')
    colorscheme dracula
endif

"syntax setings
syntax on
set encoding=utf-8
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent
set wrap
filetype indent on

augroup jdh8_ft
  au!
  autocmd BufNewFile,BufRead *.asm    set filetype=jdh8
augroup END

augroup gas_ft
  au!
  autocmd BufNewFile,BufRead *.S      set syntax=gas
augroup END

augroup jfft
  au BufRead,BufNewFile *.flex,*.jflex    set filetype=jflex
augroup END
au Syntax jflex    so ~/.vim/syntax/jflex.vim

"Telescope key bendings
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>fh <cmd>Telescope help_tags<CR>

"AirLine
let g:airline#extensions#tabline#enable = 1
let g:ariline#extensions#tabline#left_step = ' '


