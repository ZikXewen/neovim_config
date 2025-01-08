return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
    opts = {}
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons" },
    config = function()
      local telescope = require("telescope")
      telescope.setup({
        extensions = {
          ["ui-select"] = { require("telescope.themes").get_dropdown({}) }
        }
      })
      telescope.load_extension("ui-select")
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<Leader>ff", builtin.find_files, { desc = "Find files" })
      vim.keymap.set("n", "<Leader>fh", builtin.help_tags, { desc = "Find help" })
      vim.keymap.set("n", "<Leader>fw", builtin.live_grep, { desc = "Find words" })
      vim.keymap.set("n", "<Leader>fW", function() builtin.live_grep({ glob_pattern = "!**/.git/*", additional_args = { "--hidden" }}) end, { desc = "Find words in all files" })
    end
  }
}
