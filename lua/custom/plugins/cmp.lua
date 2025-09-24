return {
  {
    'saghen/blink.cmp',
    opts = {
      keymap = {
        -- set to 'none' to disable the 'default' preset
        preset = 'enter',

        ['<C-k>'] = { 'select_prev', 'fallback' },
        ['<C-j>'] = { 'select_next', 'fallback' },
      },
    },
  },
}
