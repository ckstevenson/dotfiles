vim.g.mapleader = " "
vim.opt.encoding = "utf-8"
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.hlsearch = false
vim.opt.belloff = "all"
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.scrolloff = 8
vim.opt.clipboard = "unnamedplus"
vim.opt.ff = "unix"

-- Indentation
vim.opt.autoindent = true -- continue indentation to new line
vim.opt.smartindent = true -- add extra indent when it makes sense
vim.opt.smarttab = true -- <Tab> at the start of a line behaves as expected
vim.opt.expandtab = true -- <Tab> inserts spaces
-- vim.opt.shiftwidth = 4 -- >>, << shift line by 4 spaces
-- vim.opt.tabstop = 4 -- <Tab> appears as 4 spaces
-- vim.opt.softtabstop = 4 -- <Tab> behaves as 4 spaces when editing
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

vim.opt.splitright = true
vim.opt.splitbelow = true

-- Trim whitespaces at the of lines
-- need to get working with ZZ
vim.cmd([[
  autocmd BufWritePre <buffer> :%s/\s\+$//e
]])


-- Keymaps
require("mappings")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins", {})
