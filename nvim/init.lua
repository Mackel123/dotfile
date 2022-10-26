local api = vim.api
local g = vim.g
local opt = vim.opt
local cmd = vim.cmd

-- # Set global options
opt.autoread = true
opt.background = 'dark'
opt.completeopt = {'menuone', 'noinsert', 'noselect'}  -- completion options (for deoplete)
opt.cursorline = true               -- highlight current line
opt.encoding = "utf-8"
opt.expandtab = true                -- spaces instead of tabs
opt.hidden = true                   -- enable background buffers
opt.ignorecase = true               -- ignore case in search
opt.joinspaces = false              -- no double spaces with join
opt.list = true                     -- show some invisible characters
opt.maxmempattern = 1000            -- for Riv
--opt.mouse = "nv"                    -- Enable mouse in normal and visual modes
opt.number = true                   -- show line numbers
opt.scrolloff = 4                   -- lines of context
opt.shiftround = true               -- round indent
opt.shiftwidth = 2                  -- size of indent
opt.sidescrolloff = 8               -- columns of context
opt.smartcase = true                -- do not ignore case with capitals
opt.smartindent = true              -- insert indents automatically
opt.splitbelow = true              -- put new windows below current
opt.splitright = true               -- put new vertical splits to right
opt.termguicolors = true            -- truecolor support
opt.wildmode = {'list', 'longest'}  -- command-line completion mode
opt.wrap = false  -- disable line wrap
--indentline
g.indentLine_color_term = 239
g.indent_guides_guide_size = 1
g.indent_guides_start_level = 2  -- 从第二层开始可视化显示缩进

--vim-diagnostic.config
vim.diagnostic.config({ virtual_text = false })

-- Highlight on yank
cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]

--colorschemecolorscheme
cmd([[set termguicolors]])
cmd([[set background=dark]])
cmd([[colorscheme onenord]])
g.everforest_background = '𝐒𝐨𝐟𝐭'

g.indentLine_char = '|'
g.indentLine_first_char = '-'
g.indentLine_showFirstIndentLevel = 1
g.indentLine_setColors = 0
-----------------------------
--nerdcommenter
--Create default mappings
g.NERDCreateDefaultMappings = 1

--Add spaces after comment delimiters by default
g.NERDSpaceDelims = 1

--Use compact syntax for prettified multi-line comments
g.NERDCompactSexyComs = 1

--Align line-wise comment delimiters flush left instead of following code indentation
g.NERDDefaultAlign = 'left'

--Set a language to use its alternate delimiters by default
g.NERDAltDelims_java = 1

--Add your own custom formats or override the defaults
g.NERDCustomDelimiters = '*/' 

--Allow commenting and inverting empty lines (useful when commenting a region)
g.NERDCommentEmptyLines = 1

--Enable trimming of trailing whitespace when uncommenting
g.NERDTrimTrailingWhitespace = 1


--rainbow
g.rainbow_active = 1 --set to 0 if you want to enable it later via :RainbowToggle

opt.termguicolors = true

g.nvim_markdown_preview_theme = 'solarized-dark'
g.nvim_markdown_preview_format = 'markdown'
cmd([[autocmd FileType markdown MarkdownPreview]])

--plugins,keymaps and so on
require('plugins')
require('keymaps')
require'user.alpha'
require'user.nvim-tree'
require'user.barbar'
require'user.nvim-tree'
require'user.cmp'
require'user.autopair'
require'user.impatient'
require'user.project'
require'user.toggleterm'
require('user.telescope')
require'user.which_key'
require'user.lsp'
require'user.fterm'
require'user.colorizer'
require'user.nvim-treesitter'
require('user.decay')
require('user.lualine')
