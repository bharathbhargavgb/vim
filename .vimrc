set encoding=utf-8


" SEARCH
set incsearch
set nohlsearch
set ignorecase
set smartcase


" INDENTATION
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set autoindent
set smartindent
set backspace=indent,eol,start


" VISUAL CUSTOMIZATIONS
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
filetype plugin on
colorscheme elflord

set spell spelllang=en_us
set nospell



" FILE BROWSING
"Fuzzy open file recursively from the current directory 
nnoremap <C-p> :tabnew ./**/*

let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" how to use netrw
" " - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings



" MISCELLANEOUS
set nofoldenable
set foldnestmax=3
set fdm=indent
set linebreak
set wrap
set ttyfast

set mouse=a
set title


" PERSONAL CUSTOMIZATIONS
"  0i"<ESC>jvG. - add double quotes to first character in a line, visual mode select till end of file and execute . command
vnoremap . :norm.<CR>


"Prettify json files with :Pretty -> this has dependency on python to be present in the machine
function! Format() abort
  silent ! clear
  silent %!  python -m json.tool
endfunction

command! Pretty :call Format()
