" Don't show .pyc files in NERDTree
let NERDTreeIgnore = ['\.pyc$']

" Enable indent guides for python
let g:indent_guides_enable_on_vim_startup = 1

" disable pylint
let b:ale_linters = ['flake8']

" enable folding
set foldmethod=indent
