return {
  "stevearc/oil.nvim",
  dependencies = {"nvim-tree/nvim-web-devicons"},
  config = function()
    local oil = require("oil")
    oil.setup({
      skip_confirm_for_simple_edits = true,
      use_default_keymaps = false,
      keymaps = {
        ["<C-r>"] = "actions.refresh",
        ["<CR>"] = { "actions.select", mode = "n" },
        ["<BS>"] = { "actions.parent", mode = "n" },
        ["q"] = { "actions.close", mode = "n" },
        ["p"] = { "actions.preview", mode = "n" },
        ["`"] = { "actions.cd", mode = "n" },
        ["h"] = { "actions.toggle_hidden", mode = "n" },
        ["gx"] = { "actions.open_external", mode = "n" },
        ["?"] = { "actions.show_help", mode = "n" },
      },
      view_options = {
        show_hidden = true,
        is_always_hidden = function(name, _)
          return name == ".." or name == ".git"
        end
      }
    })
    vim.keymap.set("n", "<BS>", oil.toggle_float, {})
  end
}
