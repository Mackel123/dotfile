local lualine =  require('lualine')

local function trunc(trunc_width, trunc_len, hide_width, no_ellipsis)
  return function(str)
    local win_width = vim.fn.winwidth(0)
    if hide_width and win_width < hide_width then return ''
    elseif trunc_width and trunc_len and win_width < trunc_width and #str > trunc_len then
       return str:sub(1, trunc_len) .. (no_ellipsis and '' or '...')
    end
    return str
  end
end

local function keymap()
  if vim.opt.iminsert:get() > 0 and vim.b.keymap_name then
    return  vim.b.keymap_name
  end
  return ''
end

lualine.setup {
  options = {
    icons_enabled = true,
    theme = 'onenord',
    component_separators = { left = '', right = ''},
    section_separators = { left = ' ', right = '  '},
    disabled_filetypes = {
      statusline = {"alpha", "NvimTree",},
      winbar = {},
    
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = true,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {{'mode',  icons_enabled = true,{'branch', icon = {'', color={fg='green'}}}, icon = nil,separator = nil,cond = nil,color = nil,type = nil,padding = 1,fmt = trunc(80, 4, nil, true),on_click = nil,},
                  {function() return require'lsp-status'.status() end, fmt=trunc(120, 20, 60)},
    } ,
    lualine_b = {'branch', 
                  {'diff',
		      colored = false,
		      diff_color = {
                      added    = 'DiffAdd',   
                      modified = 'DiffChange', 
                      removed  = 'DiffDelete', },
                      symbols = {added = '+', modified = '~', removed = '-'},
                      source = nil, 
                  }, },
    lualine_c = {{'filetype', colored = true,
	             icon_only = true,
	             icon = { align = 'right' },
                    },
	
                   {'filename',
                      file_status = true,
		      newfile_status = true,
		      path = 1,
		      shorting_target = 20,
		      symbols = {
                      modified = '[+]',     
                      readonly = '[-]',     
                      unnamed = '[No Name]',
                      newfile = '[New]',    
                      fmt=trunc(90, 30, 50),
	      }},
                  {'diagnostics',
                     sources = { 'nvim_diagnostic', 'coc' },
                     sections = { 'error', 'warn', 'info', 'hint' },
                     diagnostics_color = {
                      error = 'DiagnosticError',
                      warn  = 'DiagnosticWarn',
                      info  = 'DiagnosticInfo',
                      hint  = 'DiagnosticHint',
                      },
                     symbols = {error = ' ', warn = ' ', info = ' ', hint = ' ',},
                     colored = true,
                     update_in_insert = false,
                     always_visible = false,
    }},
    lualine_x = {'encoding',{'keymap',icon = '⌨ '},
                  {'fileformat', symbols = {unix = '', 
                                            dos = '',  
                                            mac = '',}},  },
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}


