return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set('n', '<leader>H', function()
      harpoon:list():add()
    end, { desc = 'Add item' })
    vim.keymap.set('n', '<leader>h', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Toggle quick menu' })

    vim.keymap.set('n', '<leader>1', function()
      harpoon:list():select(1)
    end, { desc = 'Select first item' })
    vim.keymap.set('n', '<leader>2', function()
      harpoon:list():select(2)
    end, { desc = 'Select second item' })
    vim.keymap.set('n', '<leader>3', function()
      harpoon:list():select(3)
    end, { desc = 'Select third item' })

    vim.keymap.set('n', '<leader>4', function()
      harpoon:list():select(4)
    end, { desc = 'Select fourth item' })

    vim.keymap.set('n', '<leader>5', function()
      harpoon:list():select(5)
    end, { desc = 'Select fifth item' })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<C-j>', function()
      harpoon:list():prev()
    end, { desc = 'Previous item' })
    vim.keymap.set('n', '<C-k>', function()
      harpoon:list():next()
    end, { desc = 'Next item' })
  end,
}
