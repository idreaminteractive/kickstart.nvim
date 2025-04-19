local cmp = require 'cmp'
vim.api.nvim_create_autocmd('FileType', {
  pattern = '*.sql',
  callback = function()
    vim.api.nvim_create_autocmd('BufWritePre', {
      buffer = 0,
      callback = function()
        require('conform').format { async = false, lsp_fallback = true }
      end,
    })
  end,
})
return {}
