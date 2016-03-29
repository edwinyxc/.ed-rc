set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin  'lambdatoast/elm.vim'

Plugin 'altercation/vim-colors-solarized'

"""""""""""""""""""YCM""""""""""
"""""""""""""ultisnips""""""""""
Plugin 'SirVer/ultisnips'

"""""""""""" vim-es6 """"""""""
Plugin 'isRuslan/vim-es6'

"Plugin 'kshenoy/vim-signature'


"""""""""""""""JS"""""""""""""""""""
" Plugin 'otheree/yajs.vim'
" Indenting
" Plugin 'pangloss/vim-javascript'

" javascript syntax
" Plugin 'jelera/vim-javascript-syntax'

" plugin for node.js
" Plugin 'moll/vim-node'

" You can combine vim-javascript with nathanaelkane/vim-indent-guides to get
" lovely highlighting for your perfectly indented callback hell. It’s a great
" indicator for what is lined up with what.
" Plugin 'nathanaelkane/vim-indent-guides'

" Automate some typing"
" Plugin 'Raimondi/delimitMate'

" Plugin 'maksimr/vim-jsbeautify'
" Plugin 'einars/js-beautify'

" autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
" autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

" Linting integration "
"Plugin 'scrooloose/syntastic'
" This does what it says on the tin. It will check your file on open too, not
" just on save.
" " You might not want this, so just leave it out if you don't.
" install jsHint "
" npm install -g jshint
"let g:syntastic_check_on_open=1

" Amazing code completion
"Plugin 'Valloric/YouCompleteMe'
" These are the tweaks I apply to YCM's config, you don't need them but they
" might help.
" " YCM gives you popups and splits by default that some people might not
" like, so these should tidy it up a bit for you.
"let g:ycm_add_preview_to_completeopt=0
"let g:ycm_confirm_extra_conf=0
"set completeopt-=preview

" Now to put the icing on the cake: marijnh/tern_for_vim. Tern is a tool that
"parses your JavaScript properly. It actually understands what type a property
"of an object is and is a lot more powerful than basic string suggestions.
"

"Plugin 'marijnh/tern_for_vim'


"""""""""""""""JS END"""""""""""""""

call vundle#end()
filetype plugin indent on

" Disable auto commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


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
colorscheme ir_black

" mouse

if has("gui_running") 
    set mouse=a
else
    set mouse=a
endif
" LEADER
let mapleader = ","
