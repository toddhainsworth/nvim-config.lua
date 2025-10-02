return {
  {
    "FabijanZulj/blame.nvim",
    lazy = false,
    opts = {},
    keys = {
      { "<leader>gb", "<cmd>BlameToggle<cr>", desc = "Open blame window" },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    opts = { theme = "tokyonight" },
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
    },
    opts = {},
    keys = {
      { "<leader>ng", "<cmd>Neogit<cr>", desc = "Open Neogit" },
    },
  }
}
