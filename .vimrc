set nocompatible
filetype off

let mapleader=","

" Configure Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-commentary'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'tomtom/tcomment_vim'

" Provides :ToggleWhitespace and :StripWhitespace
Plugin 'ntpeters/vim-better-whitespace'

" Plugin 'Yggdroot/indentLine'
" Plugin 'nathanelkane/vim-indent-guides'

" Vundle needs this, too
call vundle#end()
filetype plugin indent on

" --- END VUNDLE ---

" Set the vim theme
set background=dark
colorscheme solarized
let g:solarized_termcolors=256
"let g:solarized_termtrans=1

" Set the airline theme
let g:airline_theme='luna'

" Enable the buffer list with airline
let g:airline#extensions#tabline#enabled = 1

" Show just the filename in the airline tab
let g:airline#extensions#tabline#fnamemod = ':t'

" Enhance command-line completion
set wildmenu

" Allow cursor keys in insert mode
set esckeys

" Allow backspace in insert mode
set backspace=indent,eol,start

" Optimize for fast terminal connections
set ttyfast

" Add the g flag to search/replace by default
set gdefault

" Dont create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Enable line numbers
set relativenumber
set number

" Stop redrawing during macros and whatnot
set lazyredraw

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" Enable syntax highlighting
syntax enable

" Highlight current line
set cursorline

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" Make tabs as wide as four spaces
set tabstop=4
set softtabstop=4

" Auto and smart indent
set ai
set si

" Highlight searches
set hlsearch

" Ignore case of searches
set ignorecase

" Search as characters are entered
set incsearch

" Always show status line
set laststatus=2

" Enable mouse in all modes
set mouse=a

" Disable error bells
set noerrorbells
set novisualbell

" Dont reset cursor to start of line when moving around.
set nostartofline

" Show the cursor position
set ruler

" Dont show the intro message when starting Vim
set shortmess=atI

" Show the current mode
set showmode

" Show the filename in the window titlebar
set title

" Show the (partial) command as it is being typed
set showcmd

" Start scrolling three lines before the horizontal window border
set scrolloff=3

if exists('$ITERM_PROFILE')
        if exists('$TMUX') 
                let &t_SI = "\<Esc>[3 q"
                let &t_EI = "\<Esc>[0 q"
        else
                let &t_SI = "\<Esc>]50;CursorShape=1\x7"
                let &t_EI = "\<Esc>]50;CursorShape=0\x7"
        endif
end

" NERDTree
nmap <leader>t :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1

" tcomment
map <leader>kc <c-_><c-_>

" Format entire file
nmap <leader>fef ggVG=

" Open new buffers
nmap <leader>s<left>  :leftabove  vnew<cr>
nmap <leader>s<right> :rightabove vnew<cr>
nmap <leader>s<up>    :leftabove  new<cr>
nmap <leader>s<down>  :rightbelow new<cr>

