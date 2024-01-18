" Paths
let $PATH=$HOME.'/.rbenv/shims:'.$PATH
" Font and ligatures
set guifont=Fira\ Code:h16
if has("gui_macvim")
  set macligatures
endif

" Colorscheme
colorscheme srcery

" Tabs
set guitablabel=%N\.\ %M%t
