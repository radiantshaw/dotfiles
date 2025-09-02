vim.keymap.set('n', '<leader>ee', ':Explore .<CR>', {
  desc = 'Open Netrw in the root directory',
  noremap = true,
  silent = true,
})

vim.keymap.set('n', '<leader>ec', ':Explore<CR>', {
  desc = 'Open Netrw in the current directory',
  noremap = true,
  silent = true,
})

vim.keymap.set('n', '<leader>er', ':Rexplore<CR>', {
  desc = 'Open Netrw in the current directory',
  noremap = true,
  silent = true,
})
