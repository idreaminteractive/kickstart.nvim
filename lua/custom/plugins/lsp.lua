return {
  'neovim/nvim-lspconfig',
  opts = function(_, opts)
    opts.servers = opts.servers or {}
    opts.servers.tailwindcss = {
      filetypes = {
        'html', 'css', 'javascript', 'typescript', 'heex', 'elixir', 'eelixir',
      },
      root_dir = function(fname)
        return require('lspconfig.util').root_pattern(
          'tailwind.config.js',
          'tailwind.config.cjs',
          'tailwind.config.ts',
          'postcss.config.js',
          'mix.exs',
          '.git'
        )(fname)
      end,
      settings = {
        tailwindCSS = {
          includeLanguages = {
            elixir = 'html-eex',
            eelixir = 'html-eex',
            heex = 'html-eex',
          },
        },
      },
    }
    return opts
  end,
}