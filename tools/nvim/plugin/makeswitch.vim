let s:compiler_map = {
  \ 'ruby': {
    \ 'rspec': 'bundle exec rspec',
    \ 'rubocop': 'bundle exec rubocop'
  \ }
\ }

function! FiletypeBasedCompilerList(ArgLead, CmdLine, CursorPos)
  let l:filetype = &filetype

  if !has_key(s:compiler_map, l:filetype)
    return []
  endif

  let l:all_compilers = keys(s:compiler_map[l:filetype])

  if empty(a:ArgLead)
    return l:all_compilers
  else
    return filter(l:all_compilers, 'v:val =~# "^" . a:ArgLead')
  else
endfunction

function! s:SwitchCompilerAndMake()
  let l:compiler = input('Switch compiler to: ', '', 'customlist,FiletypeBasedCompilerList')

  redraw

  if !empty(l:compiler)
    let l:filetype = &filetype

    if has_key(s:compiler_map, l:filetype) && has_key(s:compiler_map[l:filetype], l:compiler)
      execute 'compiler ' . l:compiler
      let &makeprg = s:compiler_map[l:filetype][l:compiler]

      echo 'Switched compiler to ' . l:compiler . ' (' . &makeprg . ')'
      call timer_start(2000, {-> execute('echo ""')})
    endif
  endif
endfunction

nnoremap <silent> <Leader>ms :call <SID>SwitchCompilerAndMake()<CR>
nnoremap <silent> <Leader>mf :make %<CR>
