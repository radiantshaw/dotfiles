if !has('nvim')
  let g:gutentags_modules = ['ctags', 'gtags_cscope']
  let g:gutentags_generate_on_empty_buffer = 1

  set cscopeprg=gtags-cscope
endif
