set nocompatible

execute pathogen#infect()
syntax on 
filetype plugin indent on

" vim-javascript
" http://github.com/pangloss/vim-javascript
let g:javascript_plugin_jsdoc = 1

" General
set nu
set linebreak
"set showbreak=+++
set textwidth=80
set showmatch
set visualbell
set hlsearch
set smartcase
set ignorecase
set incsearch

set autoindent
" set cindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2

set t_Co=256
set ruler

set undolevels=1000
set backspace=indent,eol,start
syntax on
set background=dark
colorscheme morning

" mouse

if has("gui_running") 
    set mouse=a
else
    set mouse=a
endif
" LEADER
let mapleader = ","
