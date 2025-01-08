return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
      vim.keymap.set("n", "<leader>pm", require("mason.ui").open, { desc = "Open Mason" })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({ capabilities = capabilities })

      vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, { desc = "Go to definition" })
      vim.keymap.set("n", "<leader>lf", vim.lsp.buf.references, { desc = "Go to references" })
      vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, { desc = "Code actions" })
      vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { desc = "Rename" })
      vim.keymap.set("n", "<leader>li", "<Cmd>che lspconfig<CR>", { desc = "LSP information" })
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

      vim.keymap.set("n", "<Leader>lf", vim.lsp.buf.format, { desc = "Format buffer" })
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
