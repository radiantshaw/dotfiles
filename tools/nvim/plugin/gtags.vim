if has('cscope')
  let g:gutentags_modules = ['ctags', 'gtags_cscope']
  let g:gutentags_generate_on_empty_buffer = 1

  set cscopeprg=gtags-cscope

  nnoremap <silent> <leader>gs :cscope find s <cword><CR>
  nnoremap <silent> <leader>gg :cscope find g <cword><CR>
  nnoremap <silent> <leader>gd :cscope find d <cword><CR>
  nnoremap <silent> <leader>gc :cscope find c <cword><CR>
  nnoremap <silent> <leader>gt :cscope find t <cword><CR>
  nnoremap <silent> <leader>ge :cscope find e <cword><CR>
  nnoremap <silent> <leader>gf :cscope find f <cword><CR>
  nnoremap <silent> <leader>gi :cscope find i <cword><CR>
  nnoremap <silent> <leader>ga :cscope find a <cword><CR>
endif
