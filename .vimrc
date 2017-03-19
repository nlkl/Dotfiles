set nocompatible
set runtimepath+=~/.vim

" Plugins
try
    execute pathogen#infect()
    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'
    map <C-n> :NERDTreeToggle<CR>
catch
endtry

" Disable backup
set nobackup
set nowb
set noswapfile

" Colors
syntax enable
set background=dark

if has('termguicolors')
    set termguicolors
endif

try
    colorscheme flatcolor
    let g:airline_theme='flatcolor'
catch
    try
        colorscheme lucius
        let g:airline_theme='lucius'
    catch
        colorscheme desert
    endtry
endtry

" UI
set number
set showmode
set showcmd
set showmatch
set wildmenu
set lazyredraw
set laststatus=2
set esckeys
set timeoutlen=1000 ttimeoutlen=10

" Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Filetype
filetype plugin indent on

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" Various
set encoding=utf8
set mouse=a
set backspace=indent,eol,start

" Bindings
let mapleader="\<space>"

" GVIM
if has('gui_running')
    if has("unix")
        silent! set guifont=Inconsolata\ 12
        silent! set guifont=Monospace\ Regular\ 12
        silent! set guifont=Ubuntu\ Mono\ Regular\ 12
    else
        silent! set guifont=Consolas:h10
    endif

    set guioptions-=m
    set guioptions-=T
endif

