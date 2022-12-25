local cmd = vim.cmd


--require
require("interface.nvim_tree")
require("interface.lualine")
require("interface.barbar")
require("interface.alpha")

vim.o.winbar = "%{%v:lua.require'interface.winbar'.eval()%}"
