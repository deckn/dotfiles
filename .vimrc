set nocompatible

syntax on
set hlsearch
set incsearch
set showmatch

set textwidth=78

" Only do this part when compiled with support for autocommands.
if has("autocmd")

" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

" Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

" For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
  augroup END

else

endif " has("autocmd") }}}

set t_Co=256

if v:version >= 700
    set cursorline
endif

set encoding=utf-8

set ignorecase
set smartcase

set autoindent " always set autoindenting on
set shiftwidth=4 " Force indentation to be 4 spaces
set tabstop=4 " -- idem --
set lcs+=trail:␣ " Show trailing spaces as ␣
set expandtab " always expand tabs to spaces

set title " display title in X.
set foldcolumn=5 " display up to 4 folds
set nowrap " Prevent wrapping
colorscheme molokai
set background=dark

set backspace=indent,eol,start " allow backspacing over everything in insert mode
set history=50 " keep 50 lines of command line history
set ruler " show the cursor position all the time
set showcmd " display incomplete commands
set scrolloff=7 " Keep a 7-lines 'lookahead' when scrolling
set wildmenu " Show auto-complete matches

