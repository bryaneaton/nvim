return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    cmd = 'Telescope',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },

    keys = {
      -- Files
      {
        '<leader>ff',
        function()
          require('telescope.builtin').find_files()
        end,
        desc = 'Find files',
      },
      {
        '<leader>fa',
        function()
          require('telescope.builtin').find_files {
            follow = true,
            no_ignore = true,
            hidden = true,
          }
        end,
        desc = 'Find all files',
      },
      {
        '<leader>fw',
        function()
          require('telescope.builtin').find_files {
            default_text = vim.fn.expand '<cword>',
          }
        end,
        desc = 'Find files with word under cursor',
      },
      {
        '<leader>fl',
        function()
          require('telescope.builtin').live_grep()
        end,
        desc = 'Live grep',
      },
      {
        '<leader>fb',
        function()
          require('telescope.builtin').buffers()
        end,
        desc = 'Find buffers',
      },
      {
        '<leader>fh',
        function()
          require('telescope.builtin').help_tags()
        end,
        desc = 'Find help',
      },
      {
        '<leader>fo',
        function()
          require('telescope.builtin').oldfiles()
        end,
        desc = 'Old files',
      },
      {
        '<leader>fz',
        function()
          require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
            winblend = 10,
            previewer = false,
          })
        end,
        desc = 'Find in buffer',
      },

      -- Git
      {
        '<leader>cm',
        function()
          require('telescope.builtin').git_commits()
        end,
        desc = 'Git commits',
      },
      {
        '<leader>gt',
        function()
          require('telescope.builtin').git_status()
        end,
        desc = 'Git status',
      },

      -- Misc
      {
        '<leader>fk',
        function()
          require('telescope.builtin').keymaps()
        end,
        desc = 'Find keymaps',
      },
      {
        '<leader>fs',
        function()
          require('telescope.builtin').grep_string()
        end,
        desc = 'Find string',
      },
      {
        '<leader>fd',
        function()
          require('telescope.builtin').diagnostics()
        end,
        desc = 'Find diagnostics',
      },
    },

    config = function()
      local telescope = require 'telescope'

      telescope.setup {
        pickers = {
          find_files = {
            theme = 'ivy',
          },
        },
        extensions = {
          fzf = {},
        },
      }

      telescope.load_extension 'fzf'

      -- Load multigrep *after* telescope exists
      require('config.telescope.multigrep').setup()
    end,
  },
}
