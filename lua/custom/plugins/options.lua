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

-- Execute a code action, usually your cursor needs to be on top of an error
-- or a suggestion from your LSP for this to activate.
vim.keymap.set({ 'n', 'x' }, '<leader>ca', vim.lsp.buf.code_action, { desc = '[G]oto Code [A]ction' })

-- Find references for the word under your cursor.
vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, { desc = '[G]oto [R]eferences' })

-- Jump to the implementation of the word under your cursor.
--  Useful when your language has ways of declaring types without an actual implementation.
vim.keymap.set('n', 'gi', require('telescope.builtin').lsp_implementations, { desc = '[G]oto [I]mplementation' })

-- Jump to the definition of the word under your cursor.
--  This is where a variable was first declared, or where a function is defined, etc.
--  To jump back, press <C-t>.
vim.keymap.set('n', 'gd', require('telescope.builtin').lsp_definitions, { desc = '[G]oto [D]efinition' })
require 'kickstart.plugins.indent_line'
require 'kickstart.plugins.autopairs'

return {}
