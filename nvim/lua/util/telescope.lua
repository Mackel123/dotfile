local api = vim.api
-----------------------------------
require("telescope").setup {
  defaults = {
   file_ignore_patterns = {"./node_modules"}
  },
  pickers = {
    find_files = {
      theme = "ivy",
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
      },
          ["n"] = {
        -- unmap toggling `fb_actions.toggle_browser`
          f = false
        }
      }
    }
  }
}


require("telescope").load_extension("fzf")
require("telescope").load_extension "file_browser"


vim.api.nvim_set_keymap("n","<space>fb", ":Telescope file_browser",{ noremap = true })
