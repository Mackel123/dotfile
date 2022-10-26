local fb_actions = require "telescope".extensions.file_browser.actions
-----------------------------------
require("telescope").setup {
  defaults = {
   file_ignore_patterns = {"./node_modules"}
  },
  pickers = {
    find_files = {
      theme = "dropdown",
    }
  },
  extensions = {
    fzf = {
      fuzzy = true, -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true, -- override the file sorter
      case_mode = "smart_case" -- or "ignore_case" or "respect_case"
      -- the default case_mode is "smart_case"
       },
     file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
        mappings = {
          ["i"] = {
          -- remap to going to home directory
          ["<C-i>"] = fb_actions.goto_home_dir,
          ["<C-x>"] = fb_actions.goto_parent_dir
      },
          ["n"] = {
        -- unmap toggling `fb_actions.toggle_browser`
          f = false
        }
      }
    }
  }
}
  -- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require("telescope").load_extension("fzf")
require("telescope").load_extension "file_browser"
