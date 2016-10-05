
set nocompatible    " be iMproved
filetype off        " required by vundle

" Use vundle to load plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" NerdTree file manager
Plugin 'scrooloose/nerdtree'

" Color theme: oceanic-next
Plugin 'mhartington/oceanic-next'

" Autocompletion
Plugin 'Valloric/YouCompleteMe'

" Python static checks
Plugin 'vim-flake8'

" LaTeX input mode
Plugin 'joom/latex-unicoder.vim'

call vundle#end()            " end vundle plugins 
filetype plugin indent on    " required

" May space be your leader
let mapleader = " "

" Tab configuration
set tabstop=4 
set softtabstop=4 
set shiftwidth=4 
set expandtab

" More config
set ruler        " show line number
set title        " window title: file
set showmatch    " show matching brackets
set nu           " line numbers
set clipboard=unnamed    " use system clipboard

" NerdTree key bindings
map <leader>n :NERDTreeToggle<CR>

" Oceanic Theme
syntax enable
set t_Co=256
colorscheme OceanicNext
set background=dark

" Remaps for splits
nnoremap <leader>sh <C-W><C-h>
nnoremap <leader>sj <C-W><C-j>
nnoremap <leader>sk <C-W><C-k>
nnoremap <leader>sl <C-W><C-l>
nnoremap <leader>sq <C-W><C-q>
nnoremap <leader>ss <C-W><C-W>
