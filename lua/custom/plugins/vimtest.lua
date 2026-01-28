return {
  'vim-test/vim-test',
  config = function()
    -- Use pytest for Python tests
    vim.g['test#python#runner'] = 'pytest'

    -- Run tests in terminal
    vim.g['test#strategy'] = 'neovim'
  end,
  keys = {
    { '<leader>tn', '<cmd>TestNearest<cr>', desc = 'Test Nearest' },
    { '<leader>tf', '<cmd>TestFile<cr>', desc = 'Test File' },
    { '<leader>ts', '<cmd>TestSuite<cr>', desc = 'Test Suite' },
    { '<leader>tl', '<cmd>TestLast<cr>', desc = 'Test Last' },
  },
}
