return {
  "folke/neodev.nvim",
    "folke/which-key.nvim",
    { "folke/neoconf.nvim", cmd = "Neoconf" },

  --colorscheme
  "folke/tokyonight.nvim",
  'rmehri01/onenord.nvim',
  {'decaycs/decay.nvim', as = 'decay'},
  {
    "dstein64/vim-startuptime",
    cmd = "StartupTime",
  },

  'kdheepak/lazygit.nvim',

   --dashboard
  {'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
  },

  {
   "hrsh7th/nvim-cmp",
   event = "InsertEnter",
   dependencies = {
     "hrsh7th/cmp-nvim-lsp",
     "hrsh7th/cmp-buffer",
   },
    config = function()
      -- ...
    end,
  },
  { "stevearc/dressing.nvim", event = "VeryLazy" },
  
  "nvim-lua/plenary.nvim",

  {
    "cshuaimin/ssr.nvim",
    init = function()
      vim.keymap.set({ "n", "x" }, "<leader>cR", function()
        -- this require will automatically load the plugin
        require("ssr").open()
      end, { desc = "Structural Replace" })
    end,
  },

  {
    "monaqa/dial.nvim",
    -- lazy-load on keys
    keys = { "<C-a>", "<C-x>" },
  },
  { "folke/noice.nvim" , dependencies = {"MunifTanjim/nui.nvim","rcarriga/nvim-notify",}},

  --bufferline
  {'akinsho/bufferline.nvim', version = "v3.*", dependencies = 'nvim-tree/nvim-web-devicons'},

  --bar
  'nvim-tree/nvim-web-devicons',
  --'fgheng/winbar.nvim',
  {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'},
  'norcalli/nvim-colorizer.lua',

  {"TimUntersberger/neogit",dependencies = "nvim-lua/plenary.nvim",},

  --lualine
  'nvim-lualine/lualine.nvim',
  'arkav/lualine-lsp-progress',

  'luochen1990/rainbow',
 
   {'nvim-tree/nvim-tree.lua',
    dependencies = {'nvim-tree/nvim-web-devicons',},tag = 'nightly' -- optional, updated every week. (see issue #1193)
  },
  --nvim treesitter
  {'nvim-treesitter/nvim-treesitter',
     build = function() require('nvim-treesitter.install').update({ with_sync = true }) end,        
  },
  'nvim-treesitter/nvim-treesitter-context',

  'simrat39/symbols-outline.nvim',
  --autotag
  {"windwp/nvim-ts-autotag",
        wants = "nvim-treesitter",
        event = "InsertEnter",
        config = function()
      require("nvim-ts-autotag").setup { enable = true }
    end,
  },

 'preservim/nerdtree',

 {"mrbjarksen/neo-tree-diagnostics.nvim",
      dependencies = "nvim-neo-tree/neo-tree.nvim",
      module = "neo-tree.sources.diagnostics", -- if wanting to lazyload
  },

  "williamboman/mason.nvim",
   "williamboman/mason-lspconfig.nvim",

  "lukas-reineke/indent-blankline.nvim" ,

  {'tanvirtin/vgit.nvim',dependencies = 'nvim-lua/plenary.nvim'},

  --cmp plugins
  "hrsh7th/cmp-nvim-lua",
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  "saadparwaiz1/cmp_luasnip", -- snippet completions


  --lsp
  "williamboman/nvim-lsp-installer",
  "neovim/nvim-lspconfig",
  
  --lsp-color
  'folke/lsp-colors.nvim',
  
  "folke/trouble.nvim",

 --snippets
  "L3MON4D3/LuaSnip",
  "rafamadriz/friendly-snippets",

 --autopair
  "nvim-lua/plenary.nvim",
  "windwp/nvim-autopairs",

  "moll/vim-bbye",
  "akinsho/toggleterm.nvim",
  "ahmedkhalf/project.nvim",
  "lewis6991/impatient.nvim",

 "numToStr/FTerm.nvim",

 --markdown-preview
 'davidgranstrom/nvim-markdown-preview',
 
 --lsp-line
  'Maan2003/lsp_lines.nvim',

 'chrisbra/vim-commentary',
 
 'kevinhwang91/rnvimr',

 'AckslD/nvim-FeMaco.lua',

 {'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  dependencies = { {'nvim-lua/plenary.nvim'} }
 },
 "nvim-telescope/telescope-file-browser.nvim",
 {"nvim-telescope/telescope-fzf-native.nvim", build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' },


}



