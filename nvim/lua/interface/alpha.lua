
local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end
local dashboard = require("alpha.themes.dashboard")

local plugins = require("lazy").stats().count

local datetime = os.date " %d-%m-%Y   %H:%M:%S"

local platform = vim.fn.has "win32" == 1 and "" or ""

local v = vim.version()

dashboard.section.header.val = {
      [[                                                                                ]],
      [[ =================     ===============     ===============   ========  ======== ]],
      [[ \\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . // ]],
      [[ ||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .|| ]],
      [[ || . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . || ]],
      [[ ||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .|| ]],
      [[ || . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . || ]],
      [[ ||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .|| ]],
      [[ || . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . || ]],
      [[ ||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.|| ]],
      [[ ||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `|| ]],
      [[ ||    `'         || ||         `'    || ||    `'         || ||   | \  / |   || ]],
      [[ ||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   || ]],
      [[ ||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   || ]],
      [[ ||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   || ]],
      [[ ||   .=='    _-'          `-__\._-'         `-_./__-'         `' |. /|  |   || ]],
      [[ ||.=='    _-'                                                     `' |  /==.|| ]],
      [[ =='    _-'                                                            \/   `== ]],
      [[ \   _-'                                                                `-_   / ]],
      [[  `''                                                                      ``'  ]],
      [[                                                                                ]],

} 



dashboard.section.buttons.val = {
        dashboard.button("<C-P>", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("C-N", "   File Browser", "::NvimTreeToggle<CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("<CS-F>", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
  }
  

local function footer()
	-- NOTE: requires the fortune-mod package to work
        -- local handle = io.popen("fortune")
	-- local fortune = handle:read("*a")
	-- handle:close()
	-- return fortune
	return "I've " .. plugins .. " plugins, it launches instantly kek."
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)

vim.cmd("Alpha")