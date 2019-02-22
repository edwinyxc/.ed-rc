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

" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Status Line
set laststatus=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

execute pathogen#infect()
syntax on 
filetype plugin indent on

" vim-javascript
" http://github.com/pangloss/vim-javascript
" let g:javascript_plugin_jsdoc = 1
"
"
"
" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:Syntastic_auto_loc_list = 1
let g:Syntastic_check_on_open = 1
let g:Syntastic_check_on_wq = 0


" TagBar 
nmap <Ctrl-T> :TagbarToggle<CR>

" Buftabline
" nnoremap <C-N> :bn<CR>
" nnoremap <C-P> :bp<CR>
" Rust Racer
let g:racer_experimental_completer = 1
au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)

