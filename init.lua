vim.g.mapleader = " "

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end
vim.opt.rtp:prepend(lazypath)

---@diagnostic disable-next-line: different-requires
require("lazy").setup({ { import = "plugins" } }, require "config.lazy")

require("config.lsp").init()
require "config.options"
require "config.autocmds"

vim.schedule(function()
  require "config.keymaps"
end)
