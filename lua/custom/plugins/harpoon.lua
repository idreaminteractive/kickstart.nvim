return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = 'Add item' })
    vim.keymap.set('n', '<leader><tab>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Toggle quick menu' })

    vim.keymap.set('n', '<leader>u', function()
      harpoon:list():select(1)
    end, { desc = 'Select first item' })
    vim.keymap.set('n', '<leader>i', function()
      harpoon:list():select(2)
    end, { desc = 'Select second item' })
    vim.keymap.set('n', '<leader>o', function()
      harpoon:list():select(3)
    end, { desc = 'Select third item' })
    vim.keymap.set('n', '<leader>p', function()
      harpoon:list():select(4)
    end, { desc = 'Select fourth item' })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<C-j>', function()
      harpoon:list():prev()
    end, { desc = 'Previous item' })
    vim.keymap.set('n', '<C-k>', function()
      harpoon:list():next()
    end, { desc = 'Next item' })
    -- vim.keymap.set('n', '<leader><C-u>', function()
    --   harpoon:list():replace_at(1)
    -- end, { desc = 'Replace first item' })
    -- vim.keymap.set('n', '<leader><C-i>', function()
    --   harpoon:list():replace_at(2)
    -- end, { desc = 'Replace second item' })
    -- vim.keymap.set('n', '<leader><C-o>', function()
    --   harpoon:list():replace_at(3)
    -- end, { desc = 'Replace third item' })
    -- vim.keymap.set('n', '<leader><C-p>', function()
    --   harpoon:list():replace_at(4)
    -- end, { desc = 'Replace fourth item' })
  end,
}
