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
      { "<Leader>p", name = "Package Managers" },
      { "<Leader>f", name = "Find" },
      { "<Leader>l", name = "LSP" },
      { "<Leader>q", name = "Quit" },
      { "<Leader>qw", "<Cmd>wqa<CR>", name = "Save and quit" },
      { "<Leader>qq", "<Cmd>qa!<CR>", name = "Quit without save" },
      { "<Leader>t", name = "Terminal" },
      { "<Leader>tv", "<C-w>v<Cmd>terminal<CR>i", name = "Start a terminal (Vertical)" },
      { "<Esc>", "<C-\\><C-n>", mode = "t" },
      { "<A-h>", "<C-\\><C-n><C-w>h", mode = "t" },
      { "<A-h>", "<C-w>li" },
    }
  },
}
