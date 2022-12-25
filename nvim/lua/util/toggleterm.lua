local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
	return
end

toggleterm.setup({
        size = 10,
        open_mapping = [[<c-\>]],
        hide_numbers = true,
        shade_filetypes = {},
        shade_terminals = false,
        shading_factor = 1,
        start_in_insert = true,
        insert_mappings = true,
        persist_size = true,
        persist_mode = true,
        highlights = {
               Normal = {
                 guibg = "#002333",
               },
               NormalFloat = {
                 link = 'Normal'
               },
               FloatBorder = {
                 guifg = "#A5A692",
                 guibg = "#011F26",
               }},
        direction = "float",
        close_on_exit = true,
        float_opts = {
	        border = "single",
                width =  100,
                height = 30,
                winblend = 1,
                },
         winbar = {
               enabled = true,
               name_formatter = function(term) --  term: Terminal
                 return term.name
               end}
  })

function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  --vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
  --vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

function _LAZYGIT_TOGGLE()
	lazygit:toggle()
end

local node = Terminal:new({ cmd = "node", hidden = true })

function _NODE_TOGGLE()
	node:toggle()
end

local ncdu = Terminal:new({ cmd = "ncdu", hidden = true })

function _NCDU_TOGGLE()
	ncdu:toggle()
end

local htop = Terminal:new({ cmd = "htop", hidden = true })

function _HTOP_TOGGLE()
	htop:toggle()
end

local python = Terminal:new({ cmd = "python", hidden = true })

function _PYTHON_TOGGLE()
	python:toggle()
end
