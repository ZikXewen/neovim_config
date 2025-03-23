return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        theme = require("lualine.themes.kanagawa-paper-ink"),
      },
    })
  end,
}
