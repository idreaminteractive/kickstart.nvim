local cmp = require 'cmp'
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'sql',
  callback = function()
    vim.api.nvim_create_autocmd('BufWritePre', {
      buffer = 0,
      callback = function()
        require('conform').format { async = false, lsp_fallback = true }
      end,
    })
  end,
})
-- Setup up vim-dadbod
cmp.setup.filetype({ 'sql' }, {
  sources = {
    { name = 'vim-dadbod-completion' },
    { name = 'buffer' },
  },
})
return {
  'kristijanhusak/vim-dadbod-ui',
  dependencies = {
    { 'tpope/vim-dadbod', lazy = true },
    { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true }, -- Optional
  },
  cmd = {
    'DBUI',
    'DBUIToggle',
    'DBUIAddConnection',
    'DBUIFindBuffer',
  },
  init = function()
    -- Your DBUI configuration
    vim.g.db_ui_use_nerd_fonts = 1
  end,
}
