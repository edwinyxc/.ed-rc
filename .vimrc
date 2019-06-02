set nocompatible
" General
set noeb vb t_vb=
set noswapfile
set nu
" set linebreak
set showcmd
" set showbreak=+++
" set textwidth=80
set showmatch
set visualbell
set smartcase
set ignorecase
set incsearch
set hlsearch
set wildmenu
set wildmode=longest:list,full

set autoindent
" set cindent
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set smartindent
set smarttab

set lazyredraw

set t_Co=256
set ruler

set undolevels=2000
set backspace=indent,eol,start
set background=dark
"colorscheme morning

" mouse

if has("gui_running") 
    set mouse=a
else
    set mouse=a
endif

" LEADER
let mapleader = ","

" BUFFERS 
" Move to the previous buffer with "gp"
nnoremap gp :bp<CR>
" Move to the next buffer with "gn"
nnoremap gn :bn<CR>
" List all possible buffers with "gl"
nnoremap gl :ls<CR>
" List all possible buffers with "gb" and accept a new buffer argument [1]
nnoremap gb :ls<CR>:b

nnoremap gf :buffer wincmd f<CR>

" Status Line
set laststatus=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
syntax on 
filetype plugin indent on

" Ack use ag
if executable('ag')
    let g:ackprg = 'ag --vimgrep --smart-case'
    cnoreabbrev ag Ack
    cnoreabbrev aG Ack
    cnoreabbrev Ag Ack
    cnoreabbrev AG Ack
endif

"Start of plugins
call plug#begin('~/.vim/plugged')
"fzf.vim
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'bling/vim-bufferline'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'vim-airline/vim-airline'
call plug#end()
