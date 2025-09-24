return {
  'supermaven-inc/supermaven-nvim',
  config = function()
    require('supermaven-nvim').setup {
      keymaps = {
        accept_suggestion = '<Tab>',
        clear_suggestion = '<C-]>',
        accept_word = '<C-}>',
      },
      -- ignore_filetypes = { templ = true },
      color = {
        suggestion_color = '#655F5F',
        cterm = 244,
      },
    }
    require('supermaven-nvim.api').use_free_version()
  end,
}
