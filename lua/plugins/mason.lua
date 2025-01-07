return {
  {
    "williamboman/mason.nvim",
    opts = {}
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({ capabilities = capabilities })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end
  },
  {
    "nvimtools/none-ls.nvim",
    config = function()
      local none = require("null-ls")
      none.setup({
        sources = {
          none.builtins.formatting.stylua,
        },
      })

      vim.keymap.set("n", "<Leader>gf", vim.lsp.buf.format, {})
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = { ensure_installed = { "lua_ls" } }
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = { ensure_installed = { "stylua" } }
  }
}
