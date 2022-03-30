local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  execute 'packadd packer.nvim'
end

vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

require('packer').init({display = {auto_clean = false}})

return require('packer').startup(function(use)
  -- Explorer
  use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icon
      },
  }

  -- Buffers
  use {
    'akinsho/bufferline.nvim',
    requires = {'kyazdani42/nvim-web-devicons'},
  }

  -- Syntax
  use 'sheerun/vim-polyglot'
  use 'ap/vim-css-color'
  use 'luochen1990/rainbow'
  use 'nvim-treesitter/nvim-treesitter'

  -- Status Bar
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }


  -- Clipboard History
  use {
    'AckslD/nvim-neoclip.lua',
    requires = {
      'nvim-telescope/telescope.nvim',
    },
    config = function()
      require('neoclip').setup()
    end,
  }

  -- Tags
  use 'alvan/vim-closetag'
  use {
    'windwp/nvim-ts-autotag',
    config  = function()
      require('nvim-ts-autotag').setup()
    end,
  }

  -- Typing
  use 'jiangmiao/auto-pairs'
  use 'kamykn/spelunker.vim'

  -- Language Support Protocol
  use 'L3MON4D3/LuaSnip' -- Snippets engine
  use 'neovim/nvim-lspconfig' -- LSP configuration
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'hrsh7th/nvim-cmp' -- Autocompletion menu
  use 'onsails/lspkind-nvim' -- Icons for autocompletion menu
  use 'saadparwaiz1/cmp_luasnip' -- Snippets integration with CMP

  -- AI Assistant
  use 'github/copilot.vim'

  -- Test
  use 'tyewang/vimux-jest-test'
  -- use 'janko-m/vim-test'

  -- Finding
  use 'tpope/vim-surround'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- IDE
  use 'editorconfig/editorconfig-vim'
  use 'terryma/vim-multiple-cursors'
  use 'easymotion/vim-easymotion'
  use 'yggdroot/indentline'
  use 'scrooloose/nerdcommenter'
  use 'adelarsq/vim-matchit'
  use 'AndrewRadev/tagalong.vim'

  -- TO-DO
  use {
  "folke/todo-comments.nvim",
  requires = "nvim-lua/plenary.nvim",
  config = function()
    require("todo-comments").setup {
      highlight = {
        before = "",
        keyword = "fg",
        after = "",
        comments_only = true,
      },
    }
  end
}

  -- Prettier
  use {
    'mhartington/formatter.nvim',
    config = function() require('formatter').setup {} end
  }

  -- Tmux
  use 'christoomey/vim-tmux-navigator'

  -- HTTP Client
  use 'nicwest/vim-http'

  -- Sessions
  -- use 'xolox/vim-misc'
  -- use 'xolox/vim-session'

  -- Git
  use 'tpope/vim-fugitive' -- Git integration
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup {
        sign_priority = 9,
      }
    end
  }
  use 'APZelos/blamer.nvim' -- Show author of the line
  -- use 'mhinz/vim-signify'

  -- Themes
  use 'xiyaowong/nvim-transparent'
  use 'navarasu/onedark.nvim'

  -- ZenMode
  use {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup {}
    end
  }

  -- Debugging
  use 'mfussenegger/nvim-dap'
  use 'Pocco81/DAPInstall.nvim'

  -- MongoDB
  use { 
    'thibthib18/mongo-nvim', 
    rocks = {'lua-mongo'},
  }

  -- Markdown
  use { 
    'iamcco/markdown-preview.nvim',
    ft = 'markdown',
    run = 'cd app && yarn install'
  }
  use {
    'preservim/vim-markdown',
    requires = { 'godlygeek/tabular' }
  }

  -- Sudo
  use 'lambdalisue/suda.vim'
end)
