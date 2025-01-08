return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    icons = { group = "", separator = "-" },
    delay = 0,
    show_help = false,
    show_keys = false,
    preset = "helix",
    spec = {
      { "<leader>p", name = "Package Managers" },
      { "<leader>f", name = "Find" },
      { "<leader>l", name = "LSP" },
      { "<leader>q", name = "Quit" },
      { "<leader>qw", "<Cmd>wqa<CR>", name = "Save and quit" },
      { "<leader>qa", "<Cmd>qa!<CR>", name = "Quit without save" },
    }
  },
}
