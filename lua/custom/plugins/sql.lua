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
return {
  'kndndrj/nvim-dbee',
  dependencies = {
    'MunifTanjim/nui.nvim',
  },
  build = function()
    -- Install tries to automatically detect the install method.
    -- if it fails, try calling it with one of these parameters:
    --    "curl", "wget", "bitsadmin", "go"
    require('dbee').install()
  end,
  config = function()
    require('dbee').setup(--[[optional config]])
  end,
}
