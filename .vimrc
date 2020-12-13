set encoding=utf-8

set incsearch
set hlsearch
set ignorecase
set smartcase

set shiftwidth=4
set tabstop=4
set smarttab
set autoindent
set smartindent
set backspace=indent,eol,start

set linebreak
set wrap
set ttyfast

set number
set relativenumber
set cursorline
set visualbell
set noerrorbells
set ruler
set wildmenu
set showmode
set laststatus=2
syntax on

set spell spelllang=en_us
set nospell

set nofoldenable
set foldnestmax=3
set fdm=indent

set mouse=a
set title

colorscheme elflord

"  0i:<ESC>jvG. - add double quotes to first character in a line, visual mode select till end of file and execute . command
vnoremap . :norm.<CR>

