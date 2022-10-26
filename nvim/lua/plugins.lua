local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]
 -- Plugins
return require('packer').startup(function(use)
    use { "wbthomason/packer.nvim" }

    -- Colorscheme
    use {
      "sainnhe/everforest",
      config = function()
        vim.cmd "colorscheme everforest"
      end,
    }

    --Colorscheme-gruvbox
    use "ellisonleao/gruvbox.nvim"
    use 'shaunsingh/nord.nvim'
    use 'rmehri01/onenord.nvim'
    
    --decayces
    use {'decaycs/decay.nvim', as = 'decay'}

    -- Git
    use {
      "TimUntersberger/neogit",
      requires = "nvim-lua/plenary.nvim",
      config = function()
        require("config.neogit").setup()
      end,
    }

-- using packer.nvim
    use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}


    --lualine
    use {
     'nvim-lualine/lualine.nvim',
    }
    use 'arkav/lualine-lsp-progress'

    --telescope
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use { "nvim-telescope/telescope-file-browser.nvim" }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

    use {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
      }
    use 'Yggdroot/indentLine'
    
    use 'preservim/nerdcommenter' 
    
    use 'luochen1990/rainbow'

    use {
      'nvim-treesitter/nvim-treesitter',
       run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,        
    }

    -- Auto tag
    use {
        "windwp/nvim-ts-autotag",
        wants = "nvim-treesitter",
        event = "InsertEnter",
        config = function()
      require("nvim-ts-autotag").setup { enable = true }
    end,
    }

    use 'preservim/nerdtree'
    
    use {
      'kyazdani42/nvim-tree.lua',
        }
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
        --neo-tree-diagnnnostics
    use {
      "mrbjarksen/neo-tree-diagnostics.nvim",
      requires = "nvim-neo-tree/neo-tree.nvim",
      module = "neo-tree.sources.diagnostics", -- if wanting to lazyload
    }
  
    use { "williamboman/mason.nvim" }
  
    use "lukas-reineke/indent-blankline.nvim" 

    -- Lua
    use {
      "folke/which-key.nvim",
      config = function()
        require("which-key").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
    }
    end
  }
 
  use {'tanvirtin/vgit.nvim',
    requires = {
     'nvim-lua/plenary.nvim'
    }
  }

  use {
    'romgrk/barbar.nvim',
  }
  
  --cmp plugins
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use { "saadparwaiz1/cmp_luasnip", commit = "a9de941bcbda508d0a45d28ae366bb3f08db2e36" } -- snippet completions

  --lsp
  use {
    "williamboman/nvim-lsp-installer",
    "neovim/nvim-lspconfig",
   }

   --lsp-color
   use 'folke/lsp-colors.nvim'
  
  --trouble
  use {   
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
  -- snippets
  use { "L3MON4D3/LuaSnip", commit = "79b2019c68a2ff5ae4d732d50746c901dd45603a" } --snippet engine
  use { "rafamadriz/friendly-snippets", commit = "d27a83a363e61009278b6598703a763ce9c8e617" } -- a bunch of snippets to use

  --autopair
  use({ "nvim-lua/plenary.nvim", commit = "968a4b9afec0c633bc369662e78f8c5db0eba249" }) -- Useful lua functions used by lots of plugins
  use({ "windwp/nvim-autopairs", commit = "fa6876f832ea1b71801c4e481d8feca9a36215ec" }) -- Autopairs, integrates with both cmp and treesitter

  use({ "moll/vim-bbye", commit = "25ef93ac5a87526111f43e5110675032dbcacf56" })
  use({ "akinsho/toggleterm.nvim", commit = "aaeed9e02167c5e8f00f25156895a6fd95403af8" })
  use({ "ahmedkhalf/project.nvim", commit = "541115e762764bc44d7d3bf501b6e367842d3d4f" })
  use({ "lewis6991/impatient.nvim", commit = "969f2c5c90457612c09cf2a13fee1adaa986d350" })

  --fterm
  use "numToStr/FTerm.nvim"

  --nvim-markdown-preview
  use 'davidgranstrom/nvim-markdown-preview'

  --lsp-lines
  use({
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  config = function()
    require("lsp_lines").setup()
  end,
  })
  --vim-commentary
  use 'chrisbra/vim-commentary'

  use 'ayu-theme/ayu-vim'

  use 'norcalli/nvim-colorizer.lua'

  use 'kevinhwang91/rnvimr'

  --Catalyze your Fenced Markdown Code-block editing
  use {
  'AckslD/nvim-FeMaco.lua',
  config = 'require("femaco").setup()',
  }

----------------------------------------
    if packer_bootstrap then
      print "Restart Neovim required after installation!"
      require("packer").sync()
    end
end
)
