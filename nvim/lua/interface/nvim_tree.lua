-- examples for your init.lua:
local status_ok, nvim_tree = pcall(require,"nvim-tree")
if not status_ok then
  return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

local tree_cb = nvim_tree_config.nvim_tree_callback
-- empty setup using defaults

-- OR setup with some options
nvim_tree.setup{
  sort_by = "case_sensitive",
  hijack_netrw = true,
  hijack_directories = {
    enable = true,
    auto_open = true,
  },
  update_focused_file ={
    enable = true,
    update_cwd = true;
    update_root = true;
  },
  view = {
    adaptive_size = false,
    centralize_selection = true,
    width = 40,
    side = 'left',
    preserve_window_proportions = true,
    signcolumn = 'yes',

    mappings = {
      list = {
        { key = "<CR>", action = "edit_in_place" },
        { key = "u", action = "dir_up" },
 --       { key = "h", cb = tree_cb "close_node" },
        { key = "v", cb = tree_cb "vsplit" },
      },
    },
  },
  open_on_tab = false,
  renderer = {
    root_folder_modifier = ":t",
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_open = "",
          arrow_closed = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
          git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          untracked = "U",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    debounce_delay = 50,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  log = {
     enable = false,
     truncate = false,
     types = {
     all = false,
     config = false,
     copy_paste = false,
     dev = false,
     diagnostics = false,
     git = false,
     profile = false,
     watcher = false,
   },
  },
  filters = {
    dotfiles = true,
  },
}

--nvim_tree barbar

local nvim_tree_events = require('nvim-tree.events')
local bufferline_api = require('bufferline.api')

local function get_tree_size()
  return require'nvim-tree.view'.View.width
end

nvim_tree_events.subscribe('TreeOpen', function()
  bufferline_api.set_offset(get_tree_size())
end)

nvim_tree_events.subscribe('Resize', function()
  bufferline_api.set_offset(get_tree_size())
end)

nvim_tree_events.subscribe('TreeClose', function()
  bufferline_api.set_offset(0)
end)
