if !has('nvim')
  source $VIMRUNTIME/defaults.vim
endif

runtime! init.d/*.vim

let g:mapleader = " "

" Indentation {{{
set expandtab
set shiftwidth=0
set softtabstop=-1
set tabstop=2
" }}}

" Numbering {{{
set number relativenumber
augroup NumberToggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &number | set relativenumber | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave * if &number | set norelativenumber | endif
augroup END
" }}}

" Searching {{{
set path=**,/usr/include
set wildignore=**/node_modules/**,**.log,tags,**.tar.gz
set wildoptions+=pum

set hlsearch
nnoremap <silent> <Esc><Esc> :nohlsearch<CR>
" }}}

" The Silver Searcher {{{
if executable('ag')
  set grepprg=ag\ --vimgrep\ $*
  set grepformat^=%f:%l:%c:%m
endif
" }}}

" Cfilter {{{
packadd cfilter
" }}}

colorscheme srcery

if !has("nvim")
  highlight! link SpecialKey SrceryXgray4
endif
