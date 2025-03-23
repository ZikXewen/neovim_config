return {
  "thesimonho/kanagawa-paper.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("kanagawa-paper").setup({
      undercurl = false,
      overrides = function(_)
        return {
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          FloatTitle = { bg = "none" },
          TelescopePromptNormal = { link = "TelescopePreviewNormal" },
          TelescopePromptBorder = { link = "TelescopePreviewBorder" },
          TelescopeResultsNormal = { link = "TelescopePreviewNormal" },
          TelescopeResultsBorder = { link = "TelescopePreviewBorder" },
          WhichKeyBorder = { link = "FloatBorder" },
        }
      end,
    })
    vim.cmd.colorscheme("kanagawa-paper-ink")
  end,
}
