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
  -- Syntax
  use 'ap/vim-css-color'
  use 'sheerun/vim-polyglot'
  use 'wavded/vim-stylus'

  -- Status Bar
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- Explorer
  use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icon
      },
      config = function() require'nvim-tree'.setup {} end
  }

  -- Typing
  use 'jiangmiao/auto-pairs'
  use 'alvan/vim-closetag'
  use 'tpope/vim-surround'
  use 'kamykn/spelunker.vim'

  -- Autocomplete
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'onsails/lspkind-nvim'
  use 'L3MON4D3/LuaSnip'

  -- Test
  use 'tyewang/vimux-jest-test'
  -- use 'janko-m/vim-test'

  -- Search
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
  use 'mattn/emmet-vim'

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
  use 'tpope/vim-fugitive'
  use 'tpope/vim-repeat'
  use 'APZelos/blamer.nvim'
  use 'mhinz/vim-signify'

  -- Themes
  use 'xiyaowong/nvim-transparent'
  use 'joshdick/onedark.vim'

  -- ZenMode
  use {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup {}
    end
  }

  -- Debugging
  use 'mfussenegger/nvim-dap'

  -- MongoDB
  use { 
    'thibthib18/mongo-nvim', 
    rocks = {'lua-mongo'},
  }

end)
