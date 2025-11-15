function! ArgMoveRight()
  let current_idx = argidx()
  let total_args = argc()
  if current_idx < total_args - 1
    let current_file = argv(current_idx)
    execute 'argdelete ' . current_file
    execute '' . (current_idx + 1) . 'argedit ' . current_file
  endif
endfunction

function! ArgMoveLeft()
  let current_idx = argidx()
  if current_idx > 0
    let current_file = argv(current_idx)
    execute 'argdelete ' . current_file
    execute '' . (current_idx - 1) . 'argedit ' . current_file
  endif
endfunction

nnoremap <leader>aa :argedit %<CR>
nnoremap <leader>ad :argdelete %<CR>
nnoremap <leader>ae :argument<CR>
nnoremap <leader>an :call ArgMoveRight()<CR>
nnoremap <leader>ap :call ArgMoveLeft()<CR>
nnoremap <leader>al :arglocal<CR>
nnoremap <leader>ag :argglobal<CR>
nnoremap <leader>as :args<CR>
