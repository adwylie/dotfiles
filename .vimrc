" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'airblade/vim-gitgutter'
Bundle 'bling/vim-airline'
Bundle 'othree/html5.vim'
Bundle 'ap/vim-css-color'
Bundle 'kchmck/vim-coffee-script'
Bundle 'pangloss/vim-javascript'
Bundle 'gmarik/vim-markdown'
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on


" vim-colors-solarized
syntax enable
set background=dark
colorscheme solarized


" vim-airline customization
set laststatus=2
set t_Co=256
set encoding=utf-8
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
let g:airline_theme='solarized'


" vim-gitgutter customization
let g:gitgutter_sign_column_always=1
au colorscheme * highlight SignColumn ctermbg=256


" Separate tabbing widths for specific languages
au FileType html setl sw=2 ts=2 sts=2
au FileType php  setl sw=2 ts=2 sts=2
au FileType css  setl sw=2 ts=2 sts=2
au FileType js   setl sw=2 ts=2 sts=2

filetype plugin on
let g:clipbrdDefaultReg = '+'

" When searching move cursor to the next/previous match
map N Nzz
map n nzz

" Up/down on wrapping lines will move visually instead of logically
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

set completeopt-=preview       " Don't show extra info in preview window
set backspace=indent,eol,start " Allow backspace to work
set lines=40 columns=85        " Set size of vim window
set showcmd                    " Show (partial) command on last line
set grepprg=grep\ -nH\ $*      " Use grep for grep command..
set autoindent                 " Copy indent from current line for a new line
set expandtab                  " (Insert mode) use spaces for tabs
set smarttab                   " <tab> in front of a line will use shiftwidth
set tabstop=4                  " Number of spaces that <tab> counts for
set shiftwidth=4               " Number of spaces for each (auto)indent
set softtabstop=4              " Number of spaces to replace tabs by
set number                     " Show line numbers
set ignorecase                 " Ignore case when searching
set smartcase                  " Override ignorecase; Caps. matched in search
set incsearch                  " Incremental searching
set hlsearch                   " Highlight (previous) searches
set hidden                     " Hide buffer instead of abandoning (no saving)
set wildmenu                   " Enhanced command-line completion
set wrapscan                   " Searches wrap around end of file
set nostartofline              " Keep cursor at same column for some commands
set ruler                      " Show line and column of cursor position
set wrap                       " Wrap lines longer than width of the window
set linebreak                  " Wrap lines at specific characters (see brk)

syntax on

" Set a vertical rule if possible
if exists('+colorcolumn')
  set colorcolumn=79
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>79v.\+', -1)
endif

