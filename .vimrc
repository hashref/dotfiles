execute pathogen#infect()
Helptags

filetype plugin on

set novb
set hlsearch
set incsearch
set nobackup
if exists("*undofile")
    set noundofile
endif
set encoding=utf-8
set tabstop=2|set shiftwidth=2|set expandtab|set softtabstop=2

let g:netrw_home='~/.cache/vim'

syntax on
colorscheme Sunburst

" set .t filetypes to perl syntax
autocmd bufnewfile,bufread *.t :set filetype=perl

" ---[ keyboard mappings ]---
map <C-r> :Relativity<CR>
