set nocompatible

" Plugin repos
" git clone git://github.com/ctrlpvim/ctrlp.vim.git
" git clone git://github.com/scrooloose/nerdtree.git
" git clone git://github.com/bling/vim-airline.git
" git clone git://github.com/flazz/vim-colorschemes.git
" git clone git://github.com/tpope/vim-fugitive.git
" git clone git://github.com/justinmk/vim-sneak.git
" git clone git://github.com/tpope/vim-surround.git
" git clone git://github.com/tpope/vim-sensible.git

" Plugins
" execute pathogen#infect()
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'
" map <C-n> :NERDTreeToggle<CR>

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
set laststatus=2

" Search
set ignorecase
set smartcase
set hlsearch
set incsearch

" Explore
let g:netrw_liststyle=3

" GVIM
if has('gui_running')
    set guifont=Consolas:h10
    set guioptions-=m
    set guioptions-=T
    " colorscheme lucius
    " colorscheme solarized
endif
