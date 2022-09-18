call plug#begin()

Plug 'nvim-lua/plenary.nvim'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-telescope/telescope-file-browser.nvim'

Plug 'nvim-lualine/lualine.nvim'
Plug 'editorconfig/editorconfig-vim'

Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'EdenEast/nightfox.nvim'
Plug 'arcticicestudio/nord-vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }

call plug#end()

set termguicolors             " Enable 24-bit RGB colors in the terminal
set background=dark           " Use dark background
silent! colorscheme material  " Set colorscheme (with silent failure)
set number                    " Show line numbers
set tabstop=4                 " Show 4 character wide tabs
set shiftwidth=4              " Indent 4 characters at a time
set expandtab                 " Convert tabs to spaces
set ignorecase                " Case-insensitive search
set smartcase                 " Switch to case-sensetive search when query has uppercase characters

" Remap leader key to space
nnoremap <SPACE> <NOP>
let mapleader = " "

" Plugin configuration

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fv <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fb <cmd>Telescope file_browser<cr>

lua << EOF
require'nvim-web-devicons'.setup {
  default = true;
}

require('lualine').setup()

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "rust", "python", "c_sharp", "vala", "toml", "json" },
  sync_install = false,
  auto_install = true,
  highlight = { enable = true },
}

require("telescope").load_extension "file_browser"
EOF
