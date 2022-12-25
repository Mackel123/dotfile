local opt = vim.opt
local g = vim.g
local map =  vim.keymap


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
  "--filter=blob:none",
  "--single-branch",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
opt.runtimepath:prepend(lazypath)
require("lazy").setup("plugins.plugins",
   {
  root = vim.fn.stdpath("data") .. "/lazy", -- directory where plugins will be installed
  defaults = {  lazy = false, },
  lockfile = vim.fn.stdpath("config") .. "/lazy-lock.json", -- lockfile generated after running update.
  concurrency = 7,
  git = {
    log = { "--since=3 days ago" },
    timeout = 120,
    url_format = "https://github.com/%s.git",
  },
  dev = {
    path = "~/projects",
    patterns = {}
  },
  install = {
    missing = true,
    colorscheme = { "habamax" },
  },
  ui = {
    size = { width = 0.8, height = 0.8 },
    border = "single",
    icons = {
      cmd = " ",
      config = "",
      event = "",
      ft = " ",
      init = " ",
      keys = " ",
      plugin = " ",
      runtime = " ",
      source = " ",
      start = "",
      task = "✔ ",
    },
  --  throttle = 20,
  },
  checker = {
    enabled = true,
    concurrency = nil,
    notify = true,
    frequency = 3600,
  },
  change_detection = {
    enabled = true,
    notify = true,
  },
  performance = {
    cache = {
      enabled = true,
      path = vim.fn.stdpath("cache") .. "/lazy/cache",
      disable_events = { "VimEnter",  },
    },
    reset_packpath = true,
    rtp = {
      reset = true,
      paths = {},
      }     
  },
  debug = true,
  readme = {
    root = vim.fn.stdpath("state") .. "/lazy/readme",
    files = { "README.md" },
    -- only generate markdown helptags for plugins that dont have docs
    skip_if_doc_exists = true,
  },
})

map.set("n", "<space>l", "<cmd>:Lazy<cr>")

