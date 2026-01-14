return {
  'nvim-telescope/telescope-file-browser.nvim',
  dependencies = {
    'nvim-telescope/telescope.nvim',
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local telescope = require 'telescope'

    telescope.setup {
      extensions = {
        file_browser = {
          theme = 'dropdown',
          previewer = false,
          hijack_netrw = true,
        },
      },
    }

    telescope.load_extension 'file_browser'

    -- Open file browser at project root in a floating window
    vim.keymap.set('n', '<space>fb', function()
      telescope.extensions.file_browser.file_browser {
        path = vim.loop.cwd(),
        select_buffer = true,
      }
    end, { desc = 'Telescope File Browser (project root)' })
  end,
}
