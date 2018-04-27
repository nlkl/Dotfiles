set nocompatible

" Plugins
call plug#begin()

Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'editorconfig/editorconfig-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }

Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

Plug 'neovimhaskell/haskell-vim'
Plug 'rust-lang/rust.vim'
Plug 'reasonml-editor/vim-reason-plus'

call plug#end()

" Disable backup
set nobackup
set nowb
set noswapfile

" Colors
set termguicolors
syntax enable
set background=dark
silent! colorscheme challenger_deep
let g:lightline = { 'colorscheme': 'challenger_deep'}

" UI
set number
set showmode
set showcmd
set showmatch
set wildmenu
set lazyredraw
set laststatus=2
" set esckeys
" set timeoutlen=1000 ttimeoutlen=10

" Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
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

" GUI
if has('gui_running')
    if has("unix")
        silent! set guifont=Inconsolata\ 12
        silent! set guifont=Monospace\ Regular\ 12
        silent! set guifont=Ubuntu\ Mono\ Regular\ 12
    else
        silent! set guifont=Consolas:h10
    endif
endif

" Plugin configuration - Various
map <C-n> :NERDTreeToggle<CR>
let g:deoplete#enable_at_startup = 1

" Plugin configuration - FZF
command! -bang -nargs=* Find
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

nnoremap <c-p> :Files<CR>

" Plugin configuration - Language Servers
let g:LanguageClient_serverCommands = {
  \ 'reason': ['ocaml-language-server', '--stdio'],
  \ 'ocaml': ['ocaml-language-server', '--stdio'],
  \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
  \ }
