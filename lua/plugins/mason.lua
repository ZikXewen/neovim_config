return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "jay-babu/mason-null-ls.nvim",
    "nvimtools/none-ls.nvim",
  },
  config = function()
    require("mason").setup()
    require("null-ls").setup()
    require("mason-lspconfig").setup({
      ensure_installed = { "lua_ls", "clangd", "arduino-language-server", "ruff", "biome" },
    })
    require("mason-lspconfig").setup_handlers({
      function(server_name)
        require("lspconfig")[server_name].setup({
          capabilities = require("cmp_nvim_lsp").default_capabilities(),
        })
      end,
      ["ruff"] = function()
        require("lspconfig").ruff.setup({
          capabilities = require("cmp_nvim_lsp").default_capabilities(),
          init_options = { settings = { configuration = "~/.config/nvim/config/ruff.toml" } },
        })
      end,
    })
    require("mason-null-ls").setup({
      ensure_installed = { "stylua" },
      handlers = {},
    })
    vim.keymap.set("n", "<Leader>pm", require("mason.ui").open, { desc = "Open Mason" })
    vim.keymap.set("n", "<Leader>ld", vim.lsp.buf.definition, { desc = "Go to definition" })
    vim.keymap.set("n", "<Leader>lu", vim.lsp.buf.references, { desc = "Go to references" })
    vim.keymap.set("n", "<Leader>la", vim.lsp.buf.code_action, { desc = "Code actions" })
    vim.keymap.set("n", "<Leader>lh", vim.lsp.buf.hover, { desc = "Hover information" })
    vim.keymap.set("n", "<Leader>lr", vim.lsp.buf.rename, { desc = "Rename" })
    vim.keymap.set("n", "<Leader>lv", vim.diagnostic.open_float, { desc = "View diagnostic" })
    vim.keymap.set("n", "<Leader>li", "<Cmd>che lspconfig<CR>", { desc = "LSP information" })
    vim.keymap.set("n", "<Leader>lf", vim.lsp.buf.format, { desc = "Format buffer" })
  end,
}
