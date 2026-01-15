return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
    config = function()
      -- Install languages
      require('nvim-treesitter').install({ 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc', 'python' })

      -- Enable treesitter highlighting for supported filetypes
      vim.api.nvim_create_autocmd('FileType', {
        pattern = { 'bash', 'c', 'diff', 'html', 'lua', 'markdown', 'python', 'vim' },
        callback = function() vim.treesitter.start() end,
      })

      -- Enable treesitter-based folding
      vim.api.nvim_create_autocmd('FileType', {
        pattern = { 'bash', 'c', 'diff', 'html', 'lua', 'markdown', 'python', 'vim' },
        callback = function()
          vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
          vim.wo.foldmethod = 'expr'
        end,
      })

      -- Enable treesitter-based indentation where supported
      vim.api.nvim_create_autocmd('FileType', {
        pattern = { 'bash', 'c', 'html', 'lua', 'python', 'vim' },
        callback = function()
          vim.bo.indentexpr = 'v:lua.vim.treesitter.indentexpr()'
        end,
      })
    end,
    -- There are additional nvim-treesitter modules that you can use to interact
    -- with nvim-treesitter. You should go explore a few and see what interests you:
    --
    --    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
    --    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
    --    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
  },
}

