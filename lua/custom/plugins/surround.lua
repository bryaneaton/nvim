-- Surround text objects with quotes, brackets, etc.
-- Provides motions to add, delete, and change surrounding characters
-- Examples:
--   ys{motion}{char} - add surround
--   ds{char} - delete surround
--   cs{old}{new} - change surround
--   S{char} - surround selection (visual mode)

return {
  'kylechui/nvim-surround',
  version = '*', -- Use for stability; omit to use `main` branch for the latest features
  event = 'VeryLazy',
  config = function()
    require('nvim-surround').setup {
      aliases = {
        ['a'] = '>',
        ['b'] = ')',
        ['B'] = '}',
        ['r'] = ']',
        ['q'] = { '"', "'", '`' },
        ['s'] = { '}', ')', ']', '>', '"', "'", '`' },
      },
      highlight = {
        duration = 200,
      },
      move_cursor = 'begin',
      indent_lines = function(start, stop)
        local b = vim.bo
        -- Only perform indentation on filetypes that support it
        if start < stop and (b.autoindent or b.smartindent or b.cindent) then
          vim.cmd(string.format('silent normal! %dG=%dG', start, stop))
        end
      end,
    }
  end,
}
