require('lspconfig').tailwindcss.settings = {
  tailwindCSS = {
    includeLanguages = {
      elixir = 'html-eex',
      eelixir = 'html-eex',
      heex = 'html-eex',
    },
  },
}
require('lspconfig').tailwindcss.setup()
return {}
