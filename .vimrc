set nocompatible

" Plugins
" execute pathogen#infect()
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'

" No backup
set nobackup
set nowb
set noswapfile

" Tabs
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set autoindent

" Filetype
filetype plugin indent on
filetype on

" Syntax highlighting
syntax enable
colorscheme desert
set background=dark

" Various
set number
set showmode
set mouse=a
set encoding=utf8
set backspace=indent,eol,start
set esckeys

" Search
set hlsearch
set ignorecase
set smartcase
set incsearch
