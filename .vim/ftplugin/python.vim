" Don't show .pyc files in NERDTree
let NERDTreeIgnore = ['\.pyc$']

" Enable indent guides for python
let g:indent_guides_enable_on_vim_startup = 1

" disable pylint
let b:ale_linters = ['flake8']

" Set up python-mode plugin
let g:pymode_virtualenv = 1
let g:pymode_lint = 0
let g:pymode_rope = 0

" Codefolding
setlocal foldmethod=syntax
