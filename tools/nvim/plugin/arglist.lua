local function arg_move_right()
  local current_idx = vim.fn.argidx()
  local total_args = vim.fn.argc()
  if current_idx < total_args - 1 then
    local current_file = vim.fn.argv(current_idx)
    vim.cmd('argdelete ' .. current_file)
    vim.cmd((current_idx + 1) .. 'argedit ' .. current_file)
  end
end

local function arg_move_left()
  local current_idx = vim.fn.argidx()
  if current_idx > 0 then
    local current_file = vim.fn.argv(current_idx)
    vim.cmd('argdelete ' .. current_file)
    vim.cmd((current_idx - 1) .. 'argedit ' .. current_file)
  end
end

vim.keymap.set('n', '<leader>aa', ':argedit %<CR>', { desc = 'Add current file to arglist' })
vim.keymap.set('n', '<leader>ad', ':argdelete %<CR>', { desc = 'Remove current file from arglist' })
vim.keymap.set('n', '<leader>ae', ':argument<CR>', { desc = 'Switch to current file in arglist' })
vim.keymap.set('n', '<leader>an', arg_move_right, { desc = 'Shift current file after next file in arglist' })
vim.keymap.set('n', '<leader>ap', arg_move_left, { desc = 'Shift current file before previous file in arglist' })
