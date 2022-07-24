require('packer').startup(function(use)
  -- Explorer
  use {
    'kyazdani42/nvim-tree.lua', -- File explorer
    requires = {
      'kyazdani42/nvim-web-devicons', -- File icons
    },
  }

  -- Buffers
  use {
    'akinsho/bufferline.nvim', -- Tabs
    requires = {'kyazdani42/nvim-web-devicons'}, -- File icons
  }

  -- Syntax
  use 'ap/vim-css-color' -- Color highlighter
  use 'luochen1990/rainbow' -- Rainbow Parentheses
  use 'nvim-treesitter/nvim-treesitter' -- Syntax highlighter

  -- Status Bar
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true} -- Icons
  }

  -- Clipboard History
  use {
    'AckslD/nvim-neoclip.lua', -- Clipboard history
    requires = {
      'nvim-telescope/telescope.nvim', -- Extendable fuzzy finder
    },
    config = function()
      require('neoclip').setup()
    end,
  }

  -- Tags
  use 'alvan/vim-closetag' -- Autoclose HTML and XML tags

  -- Typing
  use 'jiangmiao/auto-pairs' -- Insert or delete brackets, parens, quotes in pair.
  use 'kamykn/spelunker.vim' -- Spell checker

  -- Language Support Protocol
  use 'L3MON4D3/LuaSnip' -- Snippets engine
  use 'neovim/nvim-lspconfig' -- LSP configuration
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'hrsh7th/nvim-cmp' -- Autocompletion menu
  use 'onsails/lspkind-nvim' -- Icons for autocompletion menu
  use 'saadparwaiz1/cmp_luasnip' -- Snippets integration with CMP

  -- AI Assistant
  use 'github/copilot.vim' -- OpenAI Codex to suggest code

  -- Test
  use 'tyewang/vimux-jest-test'
  -- use 'janko-m/vim-test'

  -- Finding
  use 'tpope/vim-surround' -- Mappings to easily delete, change and add.
  use {
    'nvim-telescope/telescope.nvim', -- Extendable fuzzy finder
    requires = { {'nvim-lua/plenary.nvim'} } -- Lua extensions
  }

  -- IDE
  use 'editorconfig/editorconfig-vim' -- EditorConfig helps maintain consistent coding styles.
  use 'terryma/vim-multiple-cursors' -- Multiple selection
  use 'easymotion/vim-easymotion' -- Simpler way to use some motions
  use 'yggdroot/indentline' -- Vertical lines at each indentation level.
  use 'scrooloose/nerdcommenter' -- Shortcuts for comments
  use 'adelarsq/vim-matchit' -- Extend matching for the % operator
  use 'AndrewRadev/tagalong.vim' -- Automatically rename closing HTML/XML

  -- TO-DO
  use {
    'folke/todo-comments.nvim', -- Highlight and search for todo comments
    requires = 'nvim-lua/plenary.nvim', -- Lua extensions
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
    'mhartington/formatter.nvim', -- Code formatter
    config = function() require('formatter').setup {} end
  }

  -- Tmux
  use 'christoomey/vim-tmux-navigator' -- Navigate seamlessly between vim and tmux splits

  -- HTTP Client
  use 'nicwest/vim-http' -- Wrapper over curl and http syntax highlighting.

  -- Git
  use 'kdheepak/lazygit.nvim' -- Git Terminal User Interface
  use 'APZelos/blamer.nvim' -- Show author in line
  use {
    'lewis6991/gitsigns.nvim', -- Git decorations
    requires = { 'nvim-lua/plenary.nvim' }, -- Lua extensions
    config = function()
      require('gitsigns').setup {
        sign_priority = 9,
      }
    end
  }

  -- Themes
  use 'navarasu/onedark.nvim' -- My favorite theme

  -- ZenMode
  use {
    "folke/zen-mode.nvim", -- Hide everything except the current file
    config = function()
      require("zen-mode").setup {}
    end
  }

  -- Debugging
  use 'mfussenegger/nvim-dap'
  use 'Pocco81/DAPInstall.nvim'

  -- Markdown
  use {
    'iamcco/markdown-preview.nvim', -- Markdown preview in browser
    ft = 'markdown',
    run = 'cd app && yarn install'
  }
  use {
    'preservim/vim-markdown', -- Markdown syntax highlighting
    requires = { 'godlygeek/tabular' }
  }

  -- Sudo
  use 'lambdalisue/suda.vim' -- Read or write files with sudo
end)
