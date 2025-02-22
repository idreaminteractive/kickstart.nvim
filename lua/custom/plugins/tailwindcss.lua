return {
  'luckasRanarison/tailwind-tools.nvim',
  name = 'tailwind-tools',
  build = ':UpdateRemotePlugins',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-telescope/telescope.nvim', -- optional
    'neovim/nvim-lspconfig', -- optional
  },
  opts = {
    root_dir = require('lspconfig').util.root_pattern(
      'tailwind.config.js',
      'tailwind.config.ts',
      'postcss.config.js',
      'postcss.config.ts',
      'package.json',
      'node_modules',
      '.git',
      'mix.exs'
    ),
  }, -- your configuration
}
