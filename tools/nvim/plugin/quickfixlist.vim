function ToggleQuickfixListWindow()
  for window in getwininfo()
    if window.quickfix == 1
      execute 'cclose'
      return
    endif
  endfor

  execute 'copen'
endfunction

nnoremap <silent> <Leader>qq :call ToggleQuickfixListWindow()<CR>
