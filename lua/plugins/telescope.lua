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
      vim.keymap.set("n", "<C-p>", builtin.find_files, {})
      vim.keymap.set("n", "<Leader>fg", builtin.live_grep, {})
    end
  }
}
