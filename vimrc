" activate pathogen
call pathogen#infect()

" Switch syntax highlighting on
syntax on

" enable filetype detection and indentation
filetype plugin on
filetype indent on

" set up some general stuff (a lot are also set in vim-sensible)
set visualbell		" visual bell instead of beeping
set nowrap		" do not wrap
set tabstop=8           " tabs is 8
set shiftwidth=4        " indent/outdent by four chars
set autoindent          " use autoindent
set shiftround		" use multiples of shift width indenting/outdenting
set ignorecase		" ignore case when searching
set hidden		" hide buffers instead of closing them
set modeline		" enable modeline

" disable backups
set nobackup

" disable undo files
if has('persistent_undo')
  set noundofile
endif

" store swapfiles in /tmp
set directory=/tmp

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux'
  set t_Co=16
endif

" enable my colorscheme
colorscheme pelle

" Make Y consistent with C and D.  See :help Y.
nnoremap Y y$

" vim:set ft=vim et sw=2:
