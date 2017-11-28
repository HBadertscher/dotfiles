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

call vundle#end()            " end vundle plugins 
filetype plugin indent on    " required

let mapleader = ","

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
nnoremap <leader>wh <C-W><C-h>
nnoremap <leader>wj <C-W><C-j>
nnoremap <leader>wk <C-W><C-k>
nnoremap <leader>wl <C-W><C-l>
nnoremap <leader>wq <C-W><C-q>
nnoremap <leader>ws <C-W><C-W>
