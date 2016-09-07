
set nocompatible    " be iMproved
filetype off        " required by vundle

" Use vundle to load plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" NerdTree file manager
Plugin 'scrooloose/nerdtree'

call vundle#end()            " end vundle plugins 
filetype plugin indent on    " required

" May space be your leader
let mapleader = " "

" NerdTree key bindings
map <leader>n :NERDTreeToggle<CR>
