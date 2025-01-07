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

-- set leaders before loading lazy.nvim
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- set tabsize
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- setup lazy.nvim
require("lazy").setup("plugins")
