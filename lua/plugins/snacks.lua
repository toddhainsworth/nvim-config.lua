return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    dependencies = {
      'echasnovski/mini.icons'
    },
    ---@type snacks.Config
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      bigfile = { enabled = true },
      dashboard = { enabled = false },
      explorer = { enabled = true },
      indent = { enabled = true },
      input = { enabled = true },
      picker = { enabled = true },
      notifier = { enabled = false },
      quickfile = { enabled = true },
      scope = { enabled = true },
      scroll = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },
    },
    keys = {
      -- Picker
      { "<leader><leader>", function() Snacks.picker.smart() end,           desc = "Smart Find Files" },
      { "<leader>fb",       function() Snacks.picker.buffers() end,         desc = "Buffers" },
      { "<leader>fg",       function() Snacks.picker.grep() end,            desc = "Grep" },
      { "<leader>ee",       function() Snacks.explorer() end,               desc = "File Explorer" },
      { "<leader>ef",       function() Snacks.explorer.reveal() end,        desc = "File Explorer at current file" },
      -- LSP
      { "gd",               function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
      { "gr",               function() Snacks.picker.lsp_references() end,  nowait = true,                         desc = "References" },
    }
  }
}
