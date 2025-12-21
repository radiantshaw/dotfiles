if &compatible
  set nocompatible
endif

packadd minpac

call minpac#init()

call minpac#add('k-takata/minpac', { 'type': 'opt' })
call minpac#add('jlcrochet/vim-rbs')
call minpac#add('srcery-colors/srcery-vim')
call minpac#add('kana/vim-textobj-user')
call minpac#add('nelstrom/vim-textobj-rubyblock')
call minpac#add('ludovicchabant/vim-gutentags')
call minpac#add('maxmellon/vim-jsx-pretty')

if has('nvim')
  call minpac#add('junegunn/fzf')
  call minpac#add('junegunn/fzf.vim')
endif

if !exists("PackUpdate")
  command PackUpdate call minpac#update()
endif

if !exists("PackClean")
  command PackClean call minpac#clean()
endif
