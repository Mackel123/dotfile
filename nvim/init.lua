--local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
--if not vim.loop.fs_stat(lazypath) then
--  vim.fn.system({
--    "git",
--    "clone",
--    "--filter=blob:none",
--    "--single-branch",
--    "https://github.com/folke/lazy.nvim.git",
--    lazypath,
--  })
--end
--vim.opt.runtimepath:prepend(lazypath)
--
---- example using a list of specs with the default options
--
--require("lazy").setup({
--  "folke/which-key.nvim",
--  { "folke/neoconf.nvim", cmd = "Neoconf" },
--  "folke/neodev.nvim",
--})

--

vim.opt.termguicolors = true

require("opt")
require("plugins")
require("util")
require("core")
require("lsp")
require("interface")
require("opt")
