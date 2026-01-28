# Bryan's Neovim Configuration

## Introduction

A modern, feature-rich Neovim configuration built on [Kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) with extensive customizations and enhancements.

This configuration provides:

* **Modern LSP Integration** - Automatic language server installation and configuration
* **Advanced Code Completion** - Powered by blink.cmp with snippet support
* **Powerful File Navigation** - Telescope with fuzzy finding and multi-grep capabilities
* **Enhanced UI** - Tokyo Night theme with bufferline and rich visual indicators
* **Git Integration** - GitSigns for inline git information and telescope git commands
* **Python Development** - Full debugging support with nvim-dap
* **Modular Architecture** - Clean separation of plugin configurations

**Built for productivity** with sensible defaults and powerful workflows.

## ✨ Key Features

### 🧠 Language Server Protocol (LSP)
- **Mason Integration**: Automatic installation of language servers, formatters, and linters
- **Multi-language Support**: Pre-configured for Python, Lua, JavaScript/TypeScript, Go, Rust, and more
- **Smart Diagnostics**: Real-time error detection and suggestions
- **Code Actions**: Automated fixes and refactoring capabilities

### 🔍 Advanced Search & Navigation
- **Telescope Fuzzy Finder**: Lightning-fast file and content search
- **Multi-grep**: Search across files with pattern and file type filtering (`<leader>fg`)
- **Live Grep**: Real-time text search across the entire project
- **Git Integration**: Browse commits, status, and diffs directly in Telescope

### 📝 Intelligent Code Completion
- **Blink.cmp Engine**: Modern, fast completion with LSP integration
- **Snippet Support**: LuaSnip integration for code snippets
- **Context-aware Suggestions**: Smart completions based on file type and context

### 🎨 Beautiful UI & UX
- **Tokyo Night Theme**: Modern dark theme with excellent readability
- **Bufferline**: Visual buffer management with tabs
- **Which-key**: Interactive keybinding hints and discovery
- **Treesitter**: Advanced syntax highlighting and code understanding

### 🔧 Developer Tools
- **Python Debugging**: Full DAP integration for Python development
- **Git Integration**: GitSigns for inline git blame, hunks, and staging
- **Auto-formatting**: Conform.nvim for consistent code formatting
- **Todo Comments**: Highlight and navigate TODO/FIXME/NOTE comments

### ⚡ Performance & Quality of Life
- **Lazy Loading**: Plugins load only when needed for fast startup
- **Smart Indentation**: Automatic indent detection
- **File Browser**: Telescope file browser for easy navigation
- **Session Management**: Restore your workspace exactly as you left it

## 🚀 Installation

### Prerequisites

This configuration requires **Neovim 0.11.5+** (latest stable recommended).

**Required Dependencies:**
- `git` - Version control
- `make` - Build tool for native extensions
- `unzip` - Archive extraction
- C Compiler (`gcc`/`clang`) - For compiling native modules
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation) - Fast text search
- [fd-find](https://github.com/sharkdp/fd#installation) - Fast file finder

**Optional but Recommended:**
- [Nerd Font](https://www.nerdfonts.com/) - For icons and symbols
- Clipboard tool (`xclip`/`xsel`/`win32yank`) - System clipboard integration
- Language-specific tools (installed automatically via Mason):
  - `npm` - For JavaScript/TypeScript development
  - `python` - For Python development and debugging
  - `go` - For Go development
  - `cargo` - For Rust development

### Quick Install

#### 1. Backup Existing Configuration
```bash
# Backup your current nvim config (if it exists)
mv ~/.config/nvim ~/.config/nvim.backup
mv ~/.local/share/nvim ~/.local/share/nvim.backup
```

#### 2. Clone This Configuration
```bash
git clone https://github.com/bryaneaton/nvim.git ~/.config/nvim
```

#### 3. Start Neovim
```bash
nvim
```

The configuration will automatically:
- Install the Lazy.nvim plugin manager
- Download and install all plugins
- Set up language servers via Mason
- Configure all keybindings and settings

#### 4. Health Check
After installation, run `:checkhealth` to verify everything is working correctly.

## 🔌 Installed Plugins

### Core LSP & Language Support
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)** - Language Server Protocol configuration
- **[mason.nvim](https://github.com/mason-org/mason.nvim)** - Portable package manager for LSPs, DAP servers, linters, and formatters
- **[mason-lspconfig.nvim](https://github.com/mason-org/mason-lspconfig.nvim)** - Extension to bridge mason.nvim with lspconfig
- **[mason-tool-installer.nvim](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim)** - Automatic installation of LSP servers and tools
- **[fidget.nvim](https://github.com/j-hui/fidget.nvim)** - Standalone UI for LSP progress messages
- **[lazydev.nvim](https://github.com/folke/lazydev.nvim)** - Lua development support for Neovim

### Code Completion & Snippets
- **[blink.cmp](https://github.com/saghen/blink.cmp)** - Modern completion plugin with LSP integration
- **[LuaSnip](https://github.com/L3MON4D3/LuaSnip)** - Snippet engine for Neovim

### Fuzzy Finding & Search
- **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)** - Fuzzy finder for files, buffers, and more
- **[telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)** - FZF sorter for telescope
- **[telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim)** - File browser extension for telescope
- **[plenary.nvim](https://github.com/nvim-lua/plenary.nvim)** - Utility functions for Lua plugins

### File Explorer & Navigation
- **[neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)** - Modern file explorer with git integration
- **[nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)** - File type icons
- **[nui.nvim](https://github.com/MunifTanjim/nui.nvim)** - UI component library

### Syntax Highlighting & Parsing
- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)** - Advanced syntax highlighting and code parsing
- **[nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)** - Smart commenting for embedded languages

### UI & Interface
- **[tokyonight.nvim](https://github.com/folke/tokyonight.nvim)** - Modern dark colorscheme
- **[bufferline.nvim](https://github.com/akinsho/bufferline.nvim)** - Enhanced buffer line with tabs
- **[which-key.nvim](https://github.com/folke/which-key.nvim)** - Interactive keymap hints and documentation
- **[mini.nvim](https://github.com/echasnovski/mini.nvim)** - Collection of independent modules (statusline, textobjects, surround)

### Git Integration
- **[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)** - Git signs, hunks, and blame information
- **[diffview.nvim](https://github.com/sindrets/diffview.nvim)** - Advanced git diff and merge conflict resolution

### Code Formatting & Linting
- **[conform.nvim](https://github.com/stevearc/conform.nvim)** - Lightweight formatter with format-on-save
- **[nvim-lint](https://github.com/mfussenegger/nvim-lint)** - Asynchronous linting

### Testing & Debugging
- **[nvim-dap](https://github.com/mfussenegger/nvim-dap)** - Debug Adapter Protocol client
- **[nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)** - Beautiful debugger UI
- **[nvim-dap-python](https://github.com/mfussenegger/nvim-dap-python)** - Python debugging support
- **[nvim-dap-go](https://github.com/leoluz/nvim-dap-go)** - Go debugging support
- **[mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)** - Mason integration for DAP
- **[vim-test](https://github.com/vim-test/vim-test)** - Test runner with support for multiple frameworks

### Code Editing & Utilities
- **[Comment.nvim](https://github.com/numToStr/Comment.nvim)** - Smart commenting with treesitter integration
- **[nvim-autopairs](https://github.com/windwp/nvim-autopairs)** - Automatic bracket and quote pairing
- **[todo-comments.nvim](https://github.com/folke/todo-comments.nvim)** - Highlight and search TODO/FIXME comments
- **[nvim-surround](https://github.com/kylechui/nvim-surround)** - Add/change/delete surrounding delimiters
- **[guess-indent.nvim](https://github.com/NMAC427/guess-indent.nvim)** - Automatic indentation detection

## ⌨️ Key Bindings Reference

**Leader Key:** `<Space>`

### Core Navigation & Editing
| Keymap | Mode | Action | Description |
|--------|------|--------|-------------|
| `<Esc>` | n | Clear Highlights | Clear search highlights |
| `<C-h/j/k/l>` | n | Window Navigation | Move focus between splits |
| `<C-h/j/k/l>` | i | Cursor Movement | Move cursor in insert mode |
| `<C-b>` | i | Word Back | Move to beginning of word in insert mode |
| `<C-w>` | i | Word Forward | Move to end of word in insert mode |

### File Operations (Telescope)
| Keymap | Action | Description |
|--------|--------|-------------|
| `<leader>ff` | Find Files | Fuzzy find files in project (ivy theme) |
| `<leader>fa` | Find All | Find all files (including hidden) |
| `<leader>fw` | Find Word | Find files containing word under cursor |
| `<leader>fl` | Live Grep | Search text across all files |
| `<leader>fb` | Find Buffers | Search open buffers |
| `<leader>fh` | Find Help | Search help documentation |
| `<leader>fo` | Old Files | Recently opened files |
| `<leader>fz` | Find in Buffer | Fuzzy find in current buffer |
| `<leader>fg` | Multi-grep | Advanced search with file filtering |
| `<leader>fk` | Find Keymaps | Search available keymaps |
| `<leader>fs` | Find String | Find string under cursor |
| `<leader>fd` | Find Diagnostics | Show all LSP diagnostics |
| `<space>fb` | File Browser | Open telescope file browser |

### Buffer Management
| Keymap | Action | Description |
|--------|--------|-------------|
| `<Tab>` | Next Buffer | Switch to next buffer |
| `<S-Tab>` | Previous Buffer | Switch to previous buffer |
| `<leader>x` | Close Buffer | Close current buffer |
| `<leader>bo` | Close Others | Close all other buffers |
| `<leader>br` | Close Right | Close buffers to the right |
| `<leader>bl` | Close Left | Close buffers to the left |

### LSP & Code Intelligence
| Keymap | Action | Description |
|--------|--------|-------------|
| `<leader>q` | Quickfix | Open diagnostic quickfix list |
| `<leader>rn` | LSP Rename | Rename symbol under cursor |
| `<leader>ca` | Code Action | Execute code actions |
| `<leader>f` | Format | Format current buffer |
| `grr` | References | Find all references (Telescope) |
| `gri` | Implementation | Go to implementation (Telescope) |
| `grd` | Definition | Go to definition (Telescope) |
| `grD` | Declaration | Go to declaration |
| `grt` | Type Definition | Go to type definition (Telescope) |
| `gO` | Document Symbols | Show document symbols (Telescope) |
| `gW` | Workspace Symbols | Show workspace symbols (Telescope) |
| `<leader>th` | Toggle Hints | Toggle inlay hints |
| `K` | Hover | Show hover documentation |

### Git Integration
| Keymap | Mode | Action | Description |
|--------|------|--------|-------------|
| `<leader>cm` | n | Git Commits | Browse git commit history |
| `<leader>gt` | n | Git Status | View git status in Telescope |
| `]c` | n | Next Hunk | Jump to next git change |
| `[c` | n | Prev Hunk | Jump to previous git change |
| `<leader>hs` | n/v | Stage Hunk | Stage git hunk |
| `<leader>hr` | n/v | Reset Hunk | Reset git hunk |
| `<leader>hS` | n | Stage Buffer | Stage entire buffer |
| `<leader>hu` | n | Undo Stage | Undo stage hunk |
| `<leader>hR` | n | Reset Buffer | Reset entire buffer |
| `<leader>hp` | n | Preview Hunk | Preview git hunk |
| `<leader>hb` | n | Blame Line | Show git blame |
| `<leader>hd` | n | Diff Index | Diff against index |
| `<leader>hD` | n | Diff Last | Diff against last commit |
| `<leader>tb` | n | Toggle Blame | Toggle line blame |
| `<leader>tD` | n | Toggle Deleted | Toggle show deleted lines |

### Advanced Git (Diffview)
| Keymap | Action | Description |
|--------|--------|-------------|
| `<leader>gd` | Open Diff View | Open git diff view |
| `<leader>gh` | File History | Open file history |
| `<leader>gH` | Current File History | Open current file history |
| `<leader>gc` | Close Diff View | Close diff view |
| `<leader>gm` | Compare Previous | Compare with previous commit |
| `<leader>gb` | Compare Branch | Compare branch with origin/main |

### Debugging (DAP)
| Keymap | Action | Description |
|--------|--------|-------------|
| `<F5>` | Continue | Start/continue debugging |
| `<F1>` | Step Into | Debug step into |
| `<F2>` | Step Over | Debug step over |
| `<F3>` | Step Out | Debug step out |
| `<F7>` | Toggle UI | Toggle debug UI |
| `<leader>b` | Toggle Breakpoint | Toggle breakpoint |
| `<leader>B` | Set Breakpoint | Set conditional breakpoint |
| `<leader>dr` | Debug REPL | Open debug REPL |
| `<leader>de` | Evaluate | Evaluate expression |

### Testing
| Keymap | Action | Description |
|--------|--------|-------------|
| `<leader>tn` | Test Nearest | Run nearest test |
| `<leader>tf` | Test File | Run current test file |
| `<leader>ts` | Test Suite | Run entire test suite |
| `<leader>tl` | Test Last | Run last test |

### Code Commenting
| Keymap | Mode | Action | Description |
|--------|------|--------|-------------|
| `gcc` | n | Line Comment | Toggle line comment |
| `gbc` | n | Block Comment | Toggle block comment |
| `gc` | v | Comment Selection | Comment selection |
| `gb` | v | Block Comment | Block comment selection |
| `gcO` | n | Comment Above | Add comment above line |
| `gco` | n | Comment Below | Add comment below line |
| `gcA` | n | Comment EOL | Add comment at end of line |

### Text Objects & Surround (Mini.nvim)
| Keymap | Action | Description |
|--------|--------|-------------|
| `sa{motion}` | Surround Add | Add surrounding characters |
| `sd{char}` | Surround Delete | Delete surrounding characters |
| `sr{old}{new}` | Surround Replace | Replace surrounding characters |
| `va)`, `vi"`, etc. | Text Objects | Enhanced around/inside text objects |

### File Explorer
| Keymap | Action | Description |
|--------|--------|-------------|
| `\` | Toggle Neo-tree | Reveal/close file explorer |

### Treesitter Incremental Selection
| Keymap | Action | Description |
|--------|--------|-------------|
| `gnn` | Init Selection | Start incremental selection |
| `grj` | Node Incremental | Expand selection to next node |
| `grc` | Scope Incremental | Expand selection to scope |
| `grm` | Node Decremental | Shrink selection |

### Terminal
| Keymap | Mode | Action | Description |
|--------|------|--------|-------------|
| `<Esc><Esc>` | t | Exit Terminal | Exit terminal mode |

### Which-key Groups
The configuration includes organized keymap groups for better discoverability:
- `<leader>f` - **Find** (Telescope operations)
- `<leader>c` - **Code** (LSP actions)
- `<leader>r` - **Rename** (Refactoring)
- `<leader>g` - **Git** (Git operations)
- `<leader>b` - **Buffers** (Buffer management)
- `<leader>t` - **Toggle** (Toggle various features)
- `<leader>n` - **VimTest** (Testing)
- `<leader>h` - **Git Hunk** (Git hunk operations)

## 🏗️ Configuration Structure

```
~/.config/nvim/
├── init.lua                      # Main entry point and core settings
├── lazy-lock.json               # Plugin version lockfile
├── lua/
│   ├── config/
│   │   └── telescope/
│   │       └── multigrep.lua    # Custom multigrep functionality
│   ├── kickstart/
│   │   └── health.lua           # Health check utilities
│   └── custom/
│       └── plugins/             # Modular plugin configurations
│           ├── init.lua         # Plugin loader
│           ├── lsp.lua          # Language server setup (LSP, Mason)
│           ├── telescope.lua    # File finder & search
│           ├── blink.lua        # Code completion engine
│           ├── bufferline.lua   # Buffer management UI
│           ├── colorscheme.lua  # Theme configuration (Tokyo Night)
│           ├── treesitter.lua   # Syntax highlighting & parsing
│           ├── which-key.lua    # Keymap hints and documentation
│           ├── gitsigns.lua     # Git integration & hunks
│           ├── diffview.lua     # Advanced git diff views
│           ├── debug.lua        # Debug Adapter Protocol (DAP)
│           ├── vimtest.lua      # Test runner (vim-test)
│           ├── conform.lua      # Code formatting
│           ├── lint.lua         # Linting support
│           ├── neo-tree.lua     # File explorer
│           ├── telescope_browser.lua # Telescope file browser
│           ├── comment.lua      # Smart commenting
│           ├── autopairs.lua    # Auto bracket pairing
│           ├── todo-comments.lua # TODO/FIXME highlighting
│           ├── mini.lua         # Statusline, surround, textobjects
│           ├── surround.lua     # Additional surround config
│           ├── guess-indent.lua # Automatic indentation detection
│           ├── indent_line.lua  # Indentation guides
│           ├── lazydev.lua      # Lua development support
│           └── 99.lua           # Additional configurations
├── CLAUDE.md                    # Project instructions & conventions
└── README.md                    # This documentation
```

### Language Servers Configured
- **Python**: `pyright` - Type checking and language features
- **Lua**: `lua_ls` - Lua language support for Neovim development
- **Grammar/Prose**: `harper_ls` - Grammar and spell checking for markdown, text, and documentation

### Formatters & Linters
- **Lua**: `stylua` - Code formatting
- **Python**: `isort`, `black` - Import sorting and code formatting
- **Markdown**: `markdownlint` - Markdown linting

## 🔧 Customization

### Adding New Plugins
Create a new file in `lua/custom/plugins/` following this pattern:
```lua
return {
  'plugin-author/plugin-name',
  config = function()
    -- Plugin configuration here
  end,
}
```

### Modifying Keybindings
Edit the relevant plugin file in `lua/custom/plugins/` or add custom keymaps in `init.lua`.

### Changing Theme
Modify `lua/custom/plugins/colorscheme.lua` to use a different colorscheme.


## 📚 Learning Resources

- [Neovim Documentation](https://neovim.io/doc/)
- [Lua Guide for Neovim](https://neovim.io/doc/user/lua-guide.html)
- [The Only Video You Need to Get Started with Neovim](https://youtu.be/m8C0Cq9Uv9o)
- [Learn Lua in 15 Minutes](https://learnxinyminutes.com/docs/lua/)

### FAQ

* What should I do if I already have a pre-existing Neovim configuration?
  * You should back it up and then delete all associated files.
  * This includes your existing init.lua and the Neovim files in `~/.local`
    which can be deleted with `rm -rf ~/.local/share/nvim/`
* Can I keep my existing configuration in parallel to kickstart?
  * Yes! You can use [NVIM_APPNAME](https://neovim.io/doc/user/starting.html#%24NVIM_APPNAME)`=nvim-NAME`
    to maintain multiple configurations. For example, you can install the kickstart
    configuration in `~/.config/nvim-kickstart` and create an alias:
    ```
    alias nvim-kickstart='NVIM_APPNAME="nvim-kickstart" nvim'
    ```
    When you run Neovim using `nvim-kickstart` alias it will use the alternative
    config directory and the matching local directory
    `~/.local/share/nvim-kickstart`. You can apply this approach to any Neovim
    distribution that you would like to try out.
* What if I want to "uninstall" this configuration:
  * See [lazy.nvim uninstall](https://lazy.folke.io/usage#-uninstalling) information
* Why is the kickstart `init.lua` a single file? Wouldn't it make sense to split it into multiple files?
  * The main purpose of kickstart is to serve as a teaching tool and a reference
    configuration that someone can easily use to `git clone` as a basis for their own.
    As you progress in learning Neovim and Lua, you might consider splitting `init.lua`
    into smaller parts. A fork of kickstart that does this while maintaining the
    same functionality is available here:
    * [kickstart-modular.nvim](https://github.com/dam9000/kickstart-modular.nvim)
  * Discussions on this topic can be found here:
    * [Restructure the configuration](https://github.com/nvim-lua/kickstart.nvim/issues/218)
    * [Reorganize init.lua into a multi-file setup](https://github.com/nvim-lua/kickstart.nvim/pull/473)

### Install Recipes

Below you can find OS specific install instructions for Neovim and dependencies.

After installing all the dependencies continue with the [Install Kickstart](#Install-Kickstart) step.

#### Windows Installation

<details><summary>Windows with Microsoft C++ Build Tools and CMake</summary>
Installation may require installing build tools and updating the run command for `telescope-fzf-native`

See `telescope-fzf-native` documentation for [more details](https://github.com/nvim-telescope/telescope-fzf-native.nvim#installation)

This requires:

- Install CMake and the Microsoft C++ Build Tools on Windows

```lua
{'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
```
</details>
<details><summary>Windows with gcc/make using chocolatey</summary>
Alternatively, one can install gcc and make which don't require changing the config,
the easiest way is to use choco:

1. install [chocolatey](https://chocolatey.org/install)
either follow the instructions on the page or use winget,
run in cmd as **admin**:
```
winget install --accept-source-agreements chocolatey.chocolatey
```

2. install all requirements using choco, exit the previous cmd and
open a new one so that choco path is set, and run in cmd as **admin**:
```
choco install -y neovim git ripgrep wget fd unzip gzip mingw make
```
</details>
<details><summary>WSL (Windows Subsystem for Linux)</summary>

```
wsl --install
wsl
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip neovim
```
</details>

#### Linux Install
<details><summary>Ubuntu Install Steps</summary>

```
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip neovim
```
</details>
<details><summary>Debian Install Steps</summary>

```
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip curl

# Now we install nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo mkdir -p /opt/nvim-linux-x86_64
sudo chmod a+rX /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz

# make it available in /usr/local/bin, distro installs to /usr/bin
sudo ln -sf /opt/nvim-linux-x86_64/bin/nvim /usr/local/bin/
```
</details>
<details><summary>Fedora Install Steps</summary>

```
sudo dnf install -y gcc make git ripgrep fd-find unzip neovim
```
</details>

<details><summary>Arch Install Steps</summary>

```
sudo pacman -S --noconfirm --needed gcc make git ripgrep fd unzip neovim
```
</details>

