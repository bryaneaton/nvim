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

This configuration requires **Neovim 0.9+** (latest stable recommended).

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

## ⌨️ Key Bindings

**Leader Key:** `<Space>`

### File Operations
| Keymap | Action | Description |
|--------|--------|-------------|
| `<leader>ff` | Find Files | Fuzzy find files in project |
| `<leader>fa` | Find All | Find all files (including hidden) |
| `<leader>fw` | Find Word | Find files containing word under cursor |
| `<leader>fl` | Live Grep | Search text across all files |
| `<leader>fb` | Find Buffers | Search open buffers |
| `<leader>fo` | Old Files | Recently opened files |
| `<leader>fg` | Multi-grep | Advanced search with file filtering |

### Buffer Management
| Keymap | Action | Description |
|--------|--------|-------------|
| `<Tab>` | Next Buffer | Switch to next buffer |
| `<S-Tab>` | Previous Buffer | Switch to previous buffer |
| `<leader>x` | Close Buffer | Close current buffer |
| `<leader>bo` | Close Others | Close all other buffers |
| `<leader>br` | Close Right | Close buffers to the right |
| `<leader>bl` | Close Left | Close buffers to the left |

### Git Integration
| Keymap | Action | Description |
|--------|--------|-------------|
| `<leader>cm` | Git Commits | Browse git commit history |
| `<leader>gt` | Git Status | View git status in Telescope |

### LSP & Diagnostics
| Keymap | Action | Description |
|--------|--------|-------------|
| `<leader>fd` | Find Diagnostics | Show all diagnostics |
| `<leader>q` | Quickfix | Open diagnostic quickfix list |
| `gd` | Go to Definition | Jump to symbol definition |
| `gr` | References | Find all references |
| `K` | Hover | Show documentation |

### Navigation
| Keymap | Action | Description |
|--------|--------|-------------|
| `<C-h/j/k/l>` | Window Navigation | Move between splits |
| `<Esc>` | Clear Highlights | Clear search highlights |

## 🏗️ Configuration Structure

```
~/.config/nvim/
├── init.lua                    # Main entry point and core settings
├── lazy-lock.json             # Plugin version lockfile
├── lua/
│   ├── config/
│   │   └── telescope/
│   │       └── multigrep.lua  # Custom multigrep functionality
│   └── custom/
│       └── plugins/           # Modular plugin configurations
│           ├── lsp.lua        # Language server setup
│           ├── telescope.lua  # File finder & search
│           ├── blink.lua      # Code completion
│           ├── bufferline.lua # Buffer management UI
│           ├── colorscheme.lua# Theme configuration
│           ├── treesitter.lua # Syntax highlighting
│           ├── gitsigns.lua   # Git integration
│           ├── python.lua     # Python debugging
│           └── ...            # Other plugin configs
└── README.md                  # This file
```

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

