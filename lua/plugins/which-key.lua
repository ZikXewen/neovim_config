return {
      -- stylua: ignore end
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    icons = { group = "", separator = "-" },
    delay = 0,
    show_help = false,
    show_keys = false,
    preset = "helix",
    spec = {
      { "<Leader>p",  nil,                        name = "Package Managers" },
      { "<Leader>f",  nil,                        name = "Find" },
      { "<Leader>l",  nil,                        name = "LSP" },
      { "<Leader>q",  nil,                        name = "Quit" },
      { "<Leader>qw", "<Cmd>wqa<CR>",             name = "Save and quit" },
      { "<Leader>qq", "<Cmd>qa!<CR>",             name = "Quit without save" },
      { "<Leader>t",  nil,                        name = "Terminal" },
      { "<Leader>tv", "<C-w>v<Cmd>terminal<CR>i", name = "Start a terminal (Vertical)" },
      { "<Esc>",      "<C-\\><C-n>",              mode = "t" },
      { "<A-h>",      "<C-\\><C-n><C-w>h",        mode = "t" },
      { "<A-h>",      "<C-w>li" },
    },
  },
}
