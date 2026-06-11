-- debug.lua
--
-- Shows how to use the DAP plugin to debug your code.
--
-- Primarily focused on configuring the debugger for Go, but can
-- be extended to other languages as well. That's why it's called
-- kickstart.nvim and not kitchen-sink.nvim ;)

return {
  -- NOTE: Yes, you can install new plugins here!
  'mfussenegger/nvim-dap',
  -- NOTE: And you can specify dependencies as well
  dependencies = {
    -- Creates a beautiful debugger UI
    'rcarriga/nvim-dap-ui',

    -- Required dependency for nvim-dap-ui
    'nvim-neotest/nvim-nio',

    -- Installs the debug adapters for you
    'mason-org/mason.nvim',
    'jay-babu/mason-nvim-dap.nvim',

    -- Add your own debuggers here
    'leoluz/nvim-dap-go',
    'mfussenegger/nvim-dap-python',
  },
  keys = {
    -- Basic debugging keymaps, feel free to change to your liking!
    {
      '<F5>',
      function()
        require('dap').continue()
      end,
      desc = 'Debug: Start/Continue',
    },
    {
      '<F1>',
      function()
        require('dap').step_into()
      end,
      desc = 'Debug: Step Into',
    },
    {
      '<F2>',
      function()
        require('dap').step_over()
      end,
      desc = 'Debug: Step Over',
    },
    {
      '<F3>',
      function()
        require('dap').step_out()
      end,
      desc = 'Debug: Step Out',
    },
    {
      '<leader>b',
      function()
        require('dap').toggle_breakpoint()
      end,
      desc = 'Debug: Toggle Breakpoint',
    },
    {
      '<leader>B',
      function()
        require('dap').set_breakpoint(vim.fn.input 'Breakpoint condition: ')
      end,
      desc = 'Debug: Set Breakpoint',
    },
    -- Toggle to see last session result. Without this, you can't see session output in case of unhandled exception.
    {
      '<F7>',
      function()
        require('dapui').toggle()
      end,
      desc = 'Debug: See last session result.',
    },
    -- Open REPL for evaluating expressions
    {
      '<leader>dr',
      function()
        require('dap').repl.open()
      end,
      desc = 'Debug: Open REPL',
    },
    -- Evaluate expression under cursor or selection
    {
      '<leader>de',
      function()
        require('dap.ui.widgets').hover()
      end,
      desc = 'Debug: Evaluate Expression',
    },
    -- Clear all breakpoints
    {
      '<leader>dc',
      function()
        require('dap').clear_breakpoints()
        vim.notify('All breakpoints cleared', vim.log.levels.INFO)
      end,
      desc = 'Debug: Clear All Breakpoints',
    },
    -- Show breakpoint list
    {
      '<leader>dl',
      function()
        require('dap').list_breakpoints()
        vim.cmd 'copen'
      end,
      desc = 'Debug: List Breakpoints',
    },
  },
  config = function()
    local dap = require 'dap'
    local dapui = require 'dapui'

    require('mason-nvim-dap').setup {
      -- Makes a best effort to setup the various debuggers with
      -- reasonable debug configurations
      automatic_installation = true,

      -- You can provide additional configuration to the handlers,
      -- see mason-nvim-dap README for more information
      handlers = {},

      -- You'll need to check that you have the required things installed
      -- online, please don't ask me how to install them :)
      ensure_installed = {
        -- Update this to ensure that you have the debuggers for the langs you want
        'delve',
      },
    }

    -- Dap UI setup with enhanced layout
    -- For more information, see |:help nvim-dap-ui|
    dapui.setup {
      icons = { expanded = '▾', collapsed = '▸', current_frame = '▸' },
      mappings = {
        -- Use a table to apply multiple mappings
        expand = { '<CR>', '<2-LeftMouse>' },
        open = 'o',
        remove = 'd',
        edit = 'e',
        repl = 'r',
        toggle = 't',
      },
      -- Use a tree-like layout for better visibility
      layouts = {
        {
          elements = {
            { id = 'scopes', size = 0.35 },
            { id = 'breakpoints', size = 0.20 },
            { id = 'stacks', size = 0.25 },
            { id = 'watches', size = 0.20 },
          },
          size = 40,
          position = 'left',
        },
        {
          elements = {
            { id = 'repl', size = 0.60 },
            { id = 'console', size = 0.40 },
          },
          size = 0.25,
          position = 'bottom',
        },
      },
      controls = {
        enabled = true,
        element = 'repl',
        icons = {
          pause = '⏸',
          play = '▶',
          step_into = '⏎',
          step_over = '⏭',
          step_out = '⏮',
          step_back = 'b',
          run_last = '▶▶',
          terminate = '⏹',
          disconnect = '⏏',
        },
      },
      floating = {
        max_height = nil,
        max_width = nil,
        border = 'rounded',
        mappings = {
          close = { 'q', '<Esc>' },
        },
      },
      render = {
        max_type_length = nil,
        max_value_lines = 100,
      },
    }

    -- Change breakpoint icons - ENABLED with better colors
    vim.api.nvim_set_hl(0, 'DapBreakpoint', { fg = '#e51400', bold = true })
    vim.api.nvim_set_hl(0, 'DapBreakpointCondition', { fg = '#ff9f00', bold = true })
    vim.api.nvim_set_hl(0, 'DapBreakpointRejected', { fg = '#808080', italic = true })
    vim.api.nvim_set_hl(0, 'DapLogPoint', { fg = '#61afef', bold = true })
    vim.api.nvim_set_hl(0, 'DapStopped', { fg = '#98c379', bg = '#2d3c2d', bold = true })

    local breakpoint_icons = vim.g.have_nerd_font
        and { Breakpoint = '●', BreakpointCondition = '◆', BreakpointRejected = '○', LogPoint = '◉', Stopped = '→' }
      or { Breakpoint = '●', BreakpointCondition = '◆', BreakpointRejected = '○', LogPoint = '◉', Stopped = '→' }

    for type, icon in pairs(breakpoint_icons) do
      local tp = 'Dap' .. type
      local hl = (type == 'Stopped') and 'DapStopped' or 'DapBreakpoint'
      vim.fn.sign_define(tp, { text = icon, texthl = hl, numhl = hl, linehl = (type == 'Stopped') and 'DapStopped' or nil })
    end

    -- Highlight the current line when stopped
    vim.api.nvim_set_hl(0, 'DapStoppedLine', { bg = '#2d3c2d', underline = true })

    dap.listeners.after.event_initialized['dapui_config'] = dapui.open
    dap.listeners.before.event_terminated['dapui_config'] = dapui.close
    dap.listeners.before.event_exited['dapui_config'] = dapui.close

    -- Disable automatic launch.json loading from .vscode folders
    vim.api.nvim_clear_autocmds({ group = 'dap-launch.json' })

    -- Highlight the current line when stopped at a breakpoint
    dap.listeners.after.event_stopped['breakpoint_highlight'] = function(session, body)
      -- Add visual indicator
      vim.defer_fn(function()
        local source_name = body and body.source and body.source.name or 'unknown'
        vim.cmd("echo 'Stopped at breakpoint in " .. source_name .. "'")
      end, 100)
    end

    -- Disable loading launch.json from .vscode folder
    dap.set_log_level('DEBUG')
    
    -- Configure Python debugger without launch.json
    dap.configurations.python = {
      {
        type = 'python',
        request = 'launch',
        name = 'Launch file',
        program = '${file}',
        pythonPath = function()
          return '/usr/bin/env python3'
        end,
      },
      {
        type = 'python',
        request = 'launch',
        name = 'Launch file with arguments',
        program = '${file}',
        args = function()
          local args_string = vim.fn.input('Arguments: ')
          return vim.split(args_string, ' ')
        end,
        pythonPath = function()
          return '/usr/bin/env python3'
        end,
      },
    }

    -- Install golang specific config
    require('dap-go').setup {
      delve = {
        -- On Windows delve must be run attached or it crashes.
        -- See https://github.com/leoluz/nvim-dap-go/blob/main/README.md#configuring
        detached = vim.fn.has 'win32' == 0,
      },
    }

    -- Install Python specific config
    -- Using Python 3.13 virtual environment with debugpy installed
    require('dap-python').setup '~/.virtualenvs/debugpy/bin/python'
  end,
}
