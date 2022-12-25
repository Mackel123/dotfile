local M = {}

local winbar_filetype_exclude = {
    "help",
    "startify",
    "dashboard",
    "packer",
    "neogitstatus",
    "NvimTree",
    "Trouble",
    "alpha",
    "lir",
    "Outline",
    "spectre_panel",
    "toggleterm",
}

-- #4A3E4B
vim.api.nvim_set_hl(0, 'WinBarPath', { bg = '#4A3E4B', fg = '#C1ADC4' })
vim.api.nvim_set_hl(0, 'WinBarModified', { bg = '#dedede', fg = '#ff3838' })

function M.eval()

    if vim.tbl_contains(winbar_filetype_exclude, vim.bo.filetype) then
        return ""
    end

    local file_path = vim.api.nvim_eval_statusline('%F', {}).str
    -- local modified = vim.api.nvim_eval_statusline('%M', {}).str == '+' and '⊚' or ''
    local modified = vim.api.nvim_eval_statusline('%m', {}).str
    local buffer_number = vim.api.nvim_eval_statusline('%n', {}).str
    local last_change = vim.fn.strftime('%a, %b %d %Y - %H:%M', vim.fn.getftime(vim.fn.expand('%')))

    file_path = file_path:gsub('/', ' ➤ ')
    file_path = file_path:gsub('~', ' $HOME')
    return '%#WinBarPath#'
     .. ' [' .. buffer_number .. '] '
     .. file_path .. ' '
     .. '%*'
     -- .. '%#WinBarModified#'
     .. ' ' .. modified
     .. '%*'
     .. 'Modified: ' .. last_change
    end
return M
