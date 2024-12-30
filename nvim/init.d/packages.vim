if &compatible
  set nocompatible
endif

packadd minpac

call minpac#init()

call minpac#add('k-takata/minpac', { 'type': 'opt' })
call minpac#add('junegunn/fzf')
call minpac#add('junegunn/fzf.vim')
call minpac#add('jlcrochet/vim-rbs')
call minpac#add('srcery-colors/srcery-vim')
call minpac#add('kana/vim-textobj-user')
call minpac#add('nelstrom/vim-textobj-rubyblock')
call minpac#add('ludovicchabant/vim-gutentags')
call minpac#add('janko-m/vim-test')
call minpac#add('scrooloose/syntastic')
call minpac#add('github/copilot.vim')
call minpac#add('nvim-lua/plenary.nvim', { 'type': 'opt' })
call minpac#add('CopilotC-Nvim/CopilotChat.nvim', { 'type': 'opt' })

if has('nvim')
  packadd plenary.nvim
  packadd CopilotChat.nvim

  lua require("CopilotChat").setup { }
endif

if !exists("PackUpdate")
  command PackUpdate call minpac#update()
endif

if !exists("PackClean")
  command PackClean call minpac#clean()
endif
