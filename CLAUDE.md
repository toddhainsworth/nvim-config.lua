# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## About This Codebase

This is a Neovim configuration written in Lua, designed for software development with a focus on TypeScript, JavaScript, Rust, and Lua. The configuration uses Lazy.nvim as the plugin manager.

## Configuration Architecture

### Core Structure
- `init.lua` - Entry point that loads config modules
- `lua/config/` - Core configuration modules:
  - `lazy.lua` - Plugin manager setup and bootstrapping
  - `settings.lua` - Vim options and global settings
  - `keymap.lua` - Custom key mappings
- `lua/plugins/` - Plugin specifications organized by category:
  - `lsp.lua` - LSP servers (Mason, nvim-lspconfig) and completion (Blink.cmp)
  - `coding.lua` - Development tools (Treesitter, formatting, Git signs, Copilot)
  - `ui.lua` - UI enhancements (Git blame, Lualine, Neogit)
  - `snacks.lua` - Snacks.nvim with file picker, explorer, and utilities
  - `colors.lua` - Color schemes
  - `mini.lua` - Mini.nvim plugins

### Plugin Management
Uses Lazy.nvim with auto-installation and update checking. Plugins are organized by functionality and loaded with `{ import = "plugins" }` in the lazy setup.

### Key Systems
- **LSP**: Configured with Mason for auto-installation of language servers (lua_ls, rust_analyzer, ts_ls, eslint)
- **Completion**: Blink.cmp with super-tab preset for VS Code-like behavior
- **File Navigation**: Snacks picker for fuzzy finding files/buffers/grep with `<leader><leader>`
- **Git Integration**: Neogit for Git UI (`<leader>ng`) and git-blame for blame annotations
- **Formatting**: Conform.nvim with format-on-save enabled

## Key Mappings

### Leader Key
- Leader: `\` (backslash)
- Local leader: `\` (backslash)

### Essential Mappings
- `<leader><leader>` - Smart file finder (Snacks picker)
- `<leader>ee` - File explorer
- `<leader>ef` - File explorer at current file
- `<leader>ng` - Open Neogit
- `<leader>ev` - Edit Neovim config
- `<leader>xx` - Toggle diagnostics (Trouble)
- `gd` - Go to definition
- `gr` - Find references
- `jj` - Escape from insert mode

## Development Workflow

### Installing/Updating Plugins
1. Open Neovim - Lazy.nvim will auto-install missing plugins
2. Use `:Lazy` to manage plugins manually
3. Auto-updates are enabled via checker

### LSP Configuration
- Language servers are auto-installed via Mason
- Current servers: Lua, Rust Analyzer, TypeScript, ESLint
- Add new servers to `lua/plugins/lsp.lua` ensure_installed array

### Adding New Plugins
1. Create or edit the appropriate file in `lua/plugins/`
2. Follow Lazy.nvim specification format
3. Group plugins by functionality (LSP, UI, coding tools, etc.)

## Important Notes

- Uses Tokyo Night colorscheme as default
- Format-on-save is enabled via Conform.nvim
- Blink.cmp provides completion with auto-brackets
- Snacks.nvim replaces telescope for file operations
- Git integration through multiple plugins (gitsigns, git-blame, neogit)
- Copilot is configured for AI assistance