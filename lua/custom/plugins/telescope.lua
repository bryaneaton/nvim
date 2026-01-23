return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
      require('telescope').setup {
        pickers = {
          find_files = {
            theme = 'ivy',
          },
        },
        extensions = {
          fzf = {},
        },
      }

      require('telescope').load_extension 'fzf'

      -- NvChad style telescope keymaps
      local builtin = require 'telescope.builtin'

      -- File operations
      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })
      vim.keymap.set('n', '<leader>fa', function()
        builtin.find_files { follow = true, no_ignore = true, hidden = true }
      end, { desc = 'Find all files' })
      vim.keymap.set('n', '<leader>fw', function()
        local word = vim.fn.expand('<cword>')
        builtin.find_files({ default_text = word })
      end, { desc = 'Find files with word under cursor' })
      vim.keymap.set('n', '<leader>fl', builtin.live_grep, { desc = 'Find live grep' })
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find buffers' })
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Find help' })
      vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = 'Find old files' })
      vim.keymap.set('n', '<leader>fz', function()
        builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
          winblend = 10,
          previewer = false,
        })
      end, { desc = 'Find in current buffer' })

      -- Git
      vim.keymap.set('n', '<leader>cm', builtin.git_commits, { desc = 'Git commits' })
      vim.keymap.set('n', '<leader>gt', builtin.git_status, { desc = 'Git status' })

      -- Additional useful ones
      vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = 'Find keymaps' })
      vim.keymap.set('n', '<leader>fs', builtin.grep_string, { desc = 'Find string under cursor' })
      vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = 'Find diagnostics' })

      require('config.telescope.multigrep').setup()
    end,
  },
}
