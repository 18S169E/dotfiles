set encoding=utf-8

" Leader
let mapleader = " "

set backspace=2
set nobackup
set nowritebackup
set noswapfile
set history=50
set ruler
set showcmd
set termguicolors
set incsearch
set laststatus=2
set autowrite
set modelines=0
set nomodeline

filetype plugin indent on

" 打开文件时跳转到上次光标位置
augroup vimrcEx
  autocmd!
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
augroup END

" 缩进：2空格
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" 显示不可见字符
set list listchars=tab:»·,trail:·,nbsp:·

" 标尺线
" set textwidth=80
" set colorcolumn=+1

" 行号
set number
set numberwidth=5

" 分割窗口方向
set splitbelow
set splitright

" 窗口跳转
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" diff 始终垂直分割
set diffopt+=vertical
