set nocompatible    " be iMproved
filetype off        " required by vundle
set encoding=utf-8

" Use vundle to load plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" NerdTree file manager
" Plugin 'scrooloose/nerdtree'

" A powerful statusline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Color theme
Plugin 'mhartington/oceanic-next'
" Plugin 'altercation/vim-colors-solarized.git'
" Plugin 'lifepillar/vim-solarized8'

" Autocompletion
Plugin 'Valloric/YouCompleteMe'

" Rust syntax highlighting
Plugin 'rust-lang/rust.vim'

" Python folding
Plugin 'tmhedberg/SimpylFold'

" Dockerfile highlighting
Plugin 'ekalinin/Dockerfile.vim'

" Snippet engine
Plugin 'SirVer/ultisnips'

" Syntax checking
Plugin 'w0rp/ale.git'

" Git integration
" Plugin 'tpope/vim-fugitive'

" LaTeX
Plugin 'lervag/vimtex'

" Tag viewer
Plugin 'majutsushi/tagbar'

" Python folding
Plugin 'python-mode/python-mode'

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

" set background=dark
" colorscheme solarized8

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

" Enable mouse usage
" set mouse=a
" set ttymouse=xterm2

" Set up backspace
" https://vi.stackexchange.com/questions/2162/why-doesnt-the-backspace-key-work-in-insert-mode
set backspace=indent,eol,start

" NerdTree key bindings
" map <leader>n :NERDTreeToggle<CR>

" Code folding setup
set foldlevel=0
let g:SimpylFold_docstring_preview=1

" Airline Setup
let g:airline_powerline_fonts=1
" let g:airline_theme='solarized'
" let g:airline_solarized_bg='dark'
let g:airline#extensions#ale#enabled=1

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

" Disable YCM leader+d
let g:ycm_key_detailed_diagnostics=''
let g:ycm_goto_buffer_command = 'split'
nnoremap <leader>g :YcmCompleter GoTo<CR>

" Set up YCM to use vimtex
if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme

" Shortcuts for ale
nmap <silent> <leader>aj <Plug>(ale_next_wrap)
nmap <silent> <leader>ak <Plug>(ale_previous_wrap)

" LaTeX setup
let g:tex_flavor = 'latex'
let g:vimtex_compiler_latexmk = {'continuous': 0}
let g:vimtex_mappings_disable = {
    \ 'n': ['tsc', 'tse', 'tsd', 'tsD'],
    \ 'x': ['tsd', 'tsD'],
    \}

" Set up Ultisnips
let g:UltiSnipsExpandTrigger = "<leader><tab>"
let g:UltiSnipsJumpForwardTrigger = "<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger = "<leader><s-tab>"

" Set the correct ctags path and tagbar shortcut
let g:tagbar_ctags_bin = '/snap/bin/ctags'
let g:tagbar_use_cache = 0
nmap <leader>t :TagbarToggle<CR>

" Blatant copy from https://github.com/lifepillar/vim-solarized8/blob/master/colors/solarized8.vim
let g:terminal_ansi_colors = ['#073642', '#dc322f', '#859900', '#b58900', '#268bd2', '#d33682', '#2aa198', '#eee8d5', '#002b36', '#cb4b16', '#586e75', '#657b83', '#839496', '#6c71c4', '#93a1a1', '#fdf6e3']
" Execute filetype plugins at the very end!!
filetype plugin indent on
