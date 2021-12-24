unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

" Indentation {{{
set expandtab
set shiftwidth=0
set softtabstop=-1
set tabstop=2
" }}}

" Netrw {{{
let g:netrw_list_hide='Session\.vim$,*\.swp$,*\.swo$,\.git/$,tags$,*\.tags$'
let g:netrw_altfile=1
let g:netrw_banner=0
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

set hlsearch
nnoremap <silent> <Esc><Esc> :nohlsearch<CR>
" }}}

" Plugins {{{
call plug#begin('~/.vim/plugged')
" Srcery colorscheme
Plug 'srcery-colors/srcery-vim'

" JSX syntax highlighting
Plug 'maxmellon/vim-jsx-pretty'

" CoffeeScript syntax highlighting
Plug 'kchmck/vim-coffee-script'

" RuboCop
Plug 'ngmy/vim-rubocop'

" Tagfile management
Plug 'ludovicchabant/vim-gutentags'
call plug#end()
" }}}

" Diff mode color contrast {{{
hi DiffAdd ctermfg=Green ctermbg=NONE
hi DiffChange ctermfg=NONE ctermbg=NONE
hi DiffDelete ctermfg=Red ctermbg=NONE
hi DiffText ctermfg=Yellow ctermbg=NONE
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

" RuboCop config {{{
let g:vimrubocop_extra_args = '--disable-pending-cops'
" }}}
