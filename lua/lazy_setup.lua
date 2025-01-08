-- install lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({"git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath})
end
vim.opt.rtp:prepend(lazypath)

if not pcall(require, "lazy") then
  vim.api.nvim_echo({{("Failed to load lazy.nvim")}}, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

-- setup lazy.nvim
local lazy = require("lazy")
lazy.setup({
  spec = { { import = "plugins" } },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      }
    }
  }
})
vim.keymap.set("n", "<Leader>pl", lazy.home, { desc = "Open Lazy" })
