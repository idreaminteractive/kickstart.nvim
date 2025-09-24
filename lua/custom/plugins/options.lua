vim.opt.relativenumber = true
vim.keymap.set('n', '<leader>wh', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<leader>wl', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<leader>wj', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<leader>wk', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<leader>wq', '<C-w><C-q>', { desc = 'Close current window' })

vim.keymap.set('n', '<leader>wv', '<C-w><C-v>', { desc = 'Split window vertically' })

require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ['<C-j>'] = require('telescope.actions').move_selection_next,
        ['<C-k>'] = require('telescope.actions').move_selection_previous,
      },
    },
  },
  pickers = {
    find_files = {
      theme = 'dropdown',
      hidden = true,
      file_ignore_patterns = { '.git/' },
    },
    live_grep = {
      theme = 'dropdown',
    },
    buffers = {
      theme = 'dropdown',
    },
    lsp_references = {
      theme = 'dropdown',
    },
    lsp_definitions = {
      theme = 'dropdown',
    },
    lsp_implementations = {
      theme = 'dropdown',
    },
  },
}

require 'kickstart.plugins.indent_line'
require 'kickstart.plugins.autopairs'

return {}
