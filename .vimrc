set encoding=utf-8


" SEARCH
set incsearch
set hlsearch
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
filetype plugin on
syntax on
"colorscheme elflord

set spell spelllang=en_us
set nospell

set path+=**

" FILE BROWSING
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=',\(^\|\s\s\)\zs\.\S\+'

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
set nocompatible

" set mouse+=a
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


" 3P PLUGINS
"" Airline
let g:airline#extensions#tabline#enabled = 1

"" fzf.vim
set rtp+=/usr/local/opt/fzf
" let g:fzf_preview_window = 'right:50%'
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6  }  }
nnoremap <silent> <C-f> :Files<CR>

"" NERDTree
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif


"" ALE
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
" Enable completion where available.
" This setting must be set before ALE is loaded.
"
" You should not turn this setting on if you wish to use ALE as a completion
" source for other completion plugins, like Deoplete.
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
set omnifunc=ale#completion#OmniFunc
"let g:ale_linters = {'go': ['gopls']}
"let b:ale_fixers = {'go': ['goimports']}

let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'

"" gruvbox
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_termcolors = 256
set termguicolors
colorscheme gruvbox

