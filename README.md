# Neovim Configuration

A modern Neovim configuration using lazy.nvim as the plugin manager with LSP support, fuzzy finding, and a beautiful Catppuccin theme.

## Plugin Manager

- **[lazy.nvim](https://github.com/folke/lazy.nvim)** - A modern plugin manager for Neovim with automatic plugin updates enabled

## Plugins

### Theme & UI
| Plugin | Description |
|--------|-------------|
| [catppuccin/nvim](https://github.com/catppuccin/nvim) | Catppuccin Mocha colorscheme |
| [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Statusline with auto theme detection |
| [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) | File icons |

### File Navigation
| Plugin | Description |
|--------|-------------|
| [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) | File explorer (v3.x) |
| [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder with fzf-native extension |
| [nvim-telescope/telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim) | UI select integration for Telescope |

### LSP & Development
| Plugin | Description |
|--------|-------------|
| [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP configuration |
| [mason-org/mason.nvim](https://github.com/mason-org/mason.nvim) | LSP/DAP/Linter installer |
| [mason-org/mason-lspconfig.nvim](https://github.com/mason-org/mason-lspconfig.nvim) | Bridge between Mason and lspconfig |
| [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting and indentation |

### Utilities
| Plugin | Description |
|--------|-------------|
| [folke/neodev.nvim](https://github.com/folke/neodev.nvim) | Neovim Lua development support |
| [folke/which-key.nvim](https://github.com/folke/which-key.nvim) | Keybinding hints |
| [folke/neoconf.nvim](https://github.com/folke/neoconf.nvim) | Project-local configuration |
| [greggh/claude-code.nvim](https://github.com/greggh/claude-code.nvim) | Claude Code AI integration |

## LSP Servers

Automatically installed via Mason:
- `lua_ls` - Lua language server
- `rust_analyzer` - Rust language server
- `tsserver` - TypeScript/JavaScript language server

## Treesitter Languages

Automatically installed:
- Lua
- JavaScript
- TypeScript

## Keybindings

### General
| Key | Mode | Action |
|-----|------|--------|
| `<Space>` | - | Leader key |
| `<C-n>` | Normal | Toggle Neo-tree file explorer |
| `<leader>cc` | Normal | Toggle Claude Code |

### Telescope
| Key | Mode | Action |
|-----|------|--------|
| `<C-p>` | Normal | Find files |
| `<leader>fg` | Normal | Live grep (search text) |

### LSP
| Key | Mode | Action |
|-----|------|--------|
| `K` | Normal | Hover documentation |
| `gd` | Normal | Go to definition |
| `<leader>ca` | Normal/Visual | Code actions |

## Editor Settings

- **Tab width**: 2 spaces (expandtab enabled)
- **Line numbers**: Enabled
- **Format on save**: Enabled (via LSP)

## Directory Structure

```
~/.config/nvim/
├── init.lua                 # Main configuration entry point
├── lazy-lock.json           # Plugin version lockfile
└── lua/
    ├── config/
    │   └── lazy.lua         # lazy.nvim bootstrap and setup
    └── plugins/
        ├── init.lua         # Core plugins (neodev, which-key, neoconf)
        ├── catpuccin.lua    # Colorscheme
        ├── claude-code.lua  # Claude Code integration
        ├── lsp-config.lua   # LSP and Mason configuration
        ├── lualine.lua      # Statusline
        ├── neo-tree.lua     # File explorer
        ├── telescope.lua    # Fuzzy finder
        ├── treesitter.lua   # Syntax highlighting
        └── web-devicons.lua # File icons
```

## Installation

1. Clone this repository to `~/.config/nvim`
2. Open Neovim - lazy.nvim will automatically bootstrap and install all plugins
3. Mason will automatically install the configured LSP servers

## Requirements

- Neovim 0.9+ (for native LSP support)
- Git
- A [Nerd Font](https://www.nerdfonts.com/) (for icons)
- ripgrep (for Telescope live grep)
- A C compiler (for telescope-fzf-native)
