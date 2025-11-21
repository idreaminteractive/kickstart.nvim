-- require('lspconfig').tailwindcss.settings = {
--   tailwindCSS = {
--     includeLanguages = {
--       elixir = 'html-eex',
--       eelixir = 'html-eex',
--       heex = 'html-eex',
--     },
--   },
-- }
-- require('lspconfig').tailwindcss.setup()
--
return {
  'neovim/nvim-lspconfig',
  opts = {
    servers = {
      tailwindcss = {
        -- Optional: Configure filetypes to include/exclude
        filetypes_exclude = { 'markdown' },
        filetypes_include = {},
        filetypes = {},

        -- Optional: Custom root_dir detection for monorepos or specific project structures
        -- root_dir = function(fname)
        --   return require("lspconfig.util").root_pattern(
        --     "tailwind.config.js",
        --     "tailwind.config.cjs",
        --     "tailwind.config.mjs",
        --     "tailwind.config.ts",
        --     "postcss.config.js",
        --     "postcss.config.cjs",
        --     "postcss.config.mjs",
        --     "postcss.config.ts",
        --     ".git"
        --   )(fname) or vim.fn.getcwd()
        -- end,

        -- Optional: Tailwind CSS specific settings
        settings = {
          tailwindCSS = {
            includeLanguages = {
              -- Map specific filetypes to Tailwind CSS language for proper highlighting and completion
              elixir = 'html-eex',
              eelixir = 'html-eex',
              heex = 'html-eex',
            },
          },
        },
      },
    },
  },
}
-- return {}
