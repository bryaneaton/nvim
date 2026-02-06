return {
  'nvim-telescope/telescope-file-browser.nvim',
  dependencies = {
    'nvim-telescope/telescope.nvim',
    'nvim-lua/plenary.nvim',
  },

  keys = {
    {
      '<space>fb',
      function()
        local telescope = require 'telescope'
        telescope.load_extension 'file_browser'

        telescope.extensions.file_browser.file_browser {
          path = vim.loop.cwd(),
          select_buffer = true,
        }
      end,
      desc = 'Telescope File Browser (project root)',
    },
  },

  config = function()
    -- NOTE:
    -- We only register extension config here.
    -- telescope.setup() is handled by core telescope.lua
    require('telescope').setup {
      extensions = {
        file_browser = {
          theme = 'dropdown',
          previewer = false,
          hijack_netrw = true,
        },
      },
    }
  end,
}
