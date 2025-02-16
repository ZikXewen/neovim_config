return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
    opts = {},
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons" },
    config = function()
      local telescope = require("telescope")
      telescope.setup({
        defaults = {
          winblend = 10,
        },
        extensions = {
          ["ui-select"] = { require("telescope.themes").get_dropdown({}) },
        },
      })
      telescope.load_extension("ui-select")
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<Leader>ff", builtin.find_files, { desc = "Find files" })
      vim.keymap.set("n", "<Leader>fh", builtin.help_tags, { desc = "Find help" })
      vim.keymap.set("n", "<Leader>fs", builtin.lsp_document_symbols, { desc = "Find LSP Symbols" })
      vim.keymap.set(
        "n",
        "<Leader>f/",
        builtin.current_buffer_fuzzy_find,
        { desc = "Find words in current buffer" }
      )
      vim.keymap.set("n", "<Leader>fc", function()
        builtin.find_files({ cwd = vim.fn.stdpath("config"), follow = true })
      end, { desc = "Find config" })
      if vim.fn.executable("rg") == 1 then
        vim.keymap.set("n", "<Leader>fw", builtin.live_grep, { desc = "Find words" })
        vim.keymap.set("n", "<Leader>fW", function()
          builtin.live_grep({ glob_pattern = "!**/.git/*", additional_args = { "--hidden" } })
        end, { desc = "Find words in all files" })
      end
    end,
  },
}
