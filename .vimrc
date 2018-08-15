set nocompatible    " be iMproved
filetype off        " required by vundle
set encoding=utf-8

" Use vundle to load plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" NerdTree file manager
Plugin 'scrooloose/nerdtree'

" A powerful statusline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Color theme
Plugin 'mhartington/oceanic-next'
" Plugin 'altercation/vim-colors-solarized.git'

" Autocompletion
Plugin 'Valloric/YouCompleteMe'

" Rust syntax highlighting
Plugin 'rust-lang/rust.vim'

" Dockerfile highlighting
Plugin 'ekalinin/Dockerfile.vim'

" Snippet engine
Plugin 'SirVer/ultisnips'

" Syntax checking
Plugin 'vim-syntastic/syntastic'

" Git integration
Plugin 'tpope/vim-fugitive'

" LaTeX
Plugin 'lervag/vimtex'

call vundle#end()            " end vundle plugins 

let mapleader = ","

" color scheme
syntax enable
set t_Co=256
if (has("termguicolors"))
    set termguicolors
endif

" let g:solarized_termcolors=256
" colorscheme solarized
" set background=dark
"
colorscheme OceanicNext
let g:airline_theme='oceanicnext'

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
set wildmenu

" Set up backspace
" https://vi.stackexchange.com/questions/2162/why-doesnt-the-backspace-key-work-in-insert-mode
set backspace=indent,eol,start

" NerdTree key bindings
map <leader>n :NERDTreeToggle<CR>

" Airline Setup
let g:airline_powerline_fonts=1
" let g:airline_theme='solarized'
" let g:airline_solarized_bg='dark'

" Remaps for splits
nnoremap <leader>h :sp<CR>
nnoremap <leader>v :vs<CR>

nnoremap <leader>wh <C-W><C-h>
nnoremap <leader>wj <C-W><C-j>
nnoremap <leader>wk <C-W><C-k>
nnoremap <leader>wl <C-W><C-l>
nnoremap <leader>wq <C-W><C-q>
nnoremap <leader>ws <C-W><C-W>

" Set up YCM
let g:ycm_filetype_blacklist = { 'sql': 1 }

" Recommended syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_tex_checkers = ['chktex']

" LaTeX setup
let g:tex_flavor = 'latex'
let g:vimtex_compiler_latexmk = {'continuous': 0}

" Remaps for syntastic and disable YCM leader+d
let g:ycm_key_detailed_diagnostics=''
nnoremap <leader>dn :lnext<CR>
nnoremap <leader>dp :lprev<CR>

" Set up Ultisnips
let g:UltiSnipsExpandTrigger = "<leader><tab>"
let g:UltiSnipsJumpForwardTrigger = "<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger = "<leader><s-tab>"

" Execute filetype plugins at the very end!!
filetype plugin indent on
