return {
  {
    -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
      local ok, ts = pcall(require, 'nvim-treesitter.configs')
      if not ok then
        ts = require 'nvim-treesitter.config'
      end

      ts.setup {
        -- Parsers to install
        ensure_installed = {
          'bash',
          'c',
          'diff',
          'html',
          'lua',
          'luadoc',
          'markdown',
          'markdown_inline',
          'query',
          'vim',
          'vimdoc',
          'python',
        },

        -- Syntax highlighting
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },

        -- Treesitter-based indentation
        indent = {
          enable = true,
          -- disable = { 'python' }, -- uncomment if python indent causes issues
        },

        -- Treesitter-based folding
        fold = {
          enable = true,
        },

        -- Incremental selection (optional but recommended)
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = 'gnn',
            node_incremental = 'grn',
            scope_incremental = 'grc',
            node_decremental = 'grm',
          },
        },
      }
    end,
  },
}
