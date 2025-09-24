vim.opt.relativenumber = true
vim.keymap.set('n', '<leader>wh', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<leader>wl', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<leader>wj', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<leader>wk', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<leader>wq', '<C-w><C-q>', { desc = 'Close current window' })

local actions = require 'telescope.actions'
vim.keymap.set('i', '<C-j>', actions.move_selection_next, { desc = 'Next' })
vim.keymap.set('i', '<C-k>', actions.move_selection_previous, { desc = 'Previous' })

return {}
