return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    -- REQUIRED
    harpoon:setup {
      global_settings = {
        ['save_on_toggle'] = true,
      },
    }
    -- REQUIRED

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end)
    vim.keymap.set('n', '<leader><tab>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    vim.keymap.set('n', '<leader>u', function()
      harpoon:list():select(1)
    end)
    vim.keymap.set('n', '<leader>i', function()
      harpoon:list():select(2)
    end)
    vim.keymap.set('n', '<leader>o', function()
      harpoon:list():select(3)
    end)
    vim.keymap.set('n', '<leader>p', function()
      harpoon:list():select(4)
    end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<C-j>', function()
      harpoon:list():prev()
    end)
    vim.keymap.set('n', '<C-k>', function()
      harpoon:list():next()
    end)
    vim.keymap.set('n', '<leader><C-u>', function()
      harpoon:list():replace_at(1)
    end)
    vim.keymap.set('n', '<leader><C-i>', function()
      harpoon:list():replace_at(2)
    end)
    vim.keymap.set('n', '<leader><C-o>', function()
      harpoon:list():replace_at(3)
    end)
    vim.keymap.set('n', '<leader><C-p>', function()
      harpoon:list():replace_at(4)
    end)
  end,
}
