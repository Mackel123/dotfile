local opt =  vim.opt
local cmd = vim.cmd
local g = vim.g

g.indent_blankline_buftype_exclude = { "terminal", "nofile" }
g.indent_blankline_filetype_exclude = ({
	"help",
	"startify",
	"alpha",
	"lazy",
	"neogitstatus",
	"NvimTree",
	"Trouble",
})

opt.termguicolors = true

cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

opt.list = true
opt.listchars:append "space:⋅"
opt.listchars:append "eol:↴"

require("indent_blankline").setup {
    show_current_context = true,
    show_current_context_start = true,
    space_char_blankline = " ",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
}
