local function copy_to_clipboard(text)
  local base64_text = vim.fn.system('echo -n "' .. text .. '" | base64 -w 0')
  -- Remove any trailing newline
  base64_text = base64_text:gsub('\n$', '')
  -- Send OSC 52 sequence
  io.stdout:write('\027]52;c;' .. base64_text .. '\007')
end

-- Set up clipboard
vim.g.clipboard = {
  name = 'OSC 52',
  copy = {
    ['+'] = function(lines, regtype)
      copy_to_clipboard(table.concat(lines, '\n'))
    end,
    ['*'] = function(lines, regtype)
      copy_to_clipboard(table.concat(lines, '\n'))
    end,
  },
  paste = {
    ['+'] = function(reg)
      return vim.fn.getreg ''
    end,
    ['*'] = function(reg)
      return vim.fn.getreg ''
    end,
  },
}

-- Use system clipboard by default
vim.opt.clipboard = 'unnamedplus'
return {}
