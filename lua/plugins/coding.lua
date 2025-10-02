return {
  -- Treesitter to make stuff more visible to NeoVim
  {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    ensure_installed = { "lua", "vim", "vimdoc", "markdown", "markdown_inline", "javascript", "typescript" },
    lazy = false,
    build = ":TSUpdate",
    opts = {}
  },
  -- TODO comments are more visible
  { "folke/todo-comments.nvim", opts = {} },
  {
    "kylechui/nvim-surround",
    version = "^3.0.0",
    event = "VeryLazy",
    opts = {}
  },
  -- More comment niceties
  {
    "folke/ts-comments.nvim",
    event = "VeryLazy",
    opts = {},
  },
  -- Include Git signs in the left-gutter
  { "lewis6991/gitsigns.nvim",  opts = {} },
  -- See errors in a quickfix window instead of inline
  {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
    },
  },
  -- Format on save is primarily why I'll be using this
  {
    'stevearc/conform.nvim',
    opts = {
      format_on_save = {
        lsp_format = "fallback"
      }
    },
  },
  -- Show lines under the currently 'hovered' word and/or line
  {
    "ya2s/nvim-cursorline",
    opts = {
      cursorline = {
        enable = true,
        timeout = 500,
        number = false,
      },
      cursorword = {
        enable = true,
        min_length = 3,
        hl = { underline = true },
      }
    }
  },
  {
    "github/copilot.vim"
  },
  {
    "greggh/claude-code.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim", -- Required for git operations
    },
    opts = {}
  }
}
