local status_ok, fterm = pcall(require,"Fterm")
if not status_ok then
  return
end

fterm.setup({
    border = 'double',
    dimensions  = {
        height = 0.9,
        width = 0.9,
    },
})

-- Example keybindings
vim.api.nvim_set_keymap('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.api.nvim_set_keymap('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

