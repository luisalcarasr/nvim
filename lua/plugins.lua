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
  use 'scrooloose/nerdtree'

  -- Typing
  use 'jiangmiao/auto-pairs'
  use 'alvan/vim-closetag'
  use 'tpope/vim-surround'
  use 'kamykn/spelunker.vim'

  -- Autocomplete
  use {'neoclide/coc.nvim', branch='release'}

  -- Test
  use 'tyewang/vimux-jest-test'
  -- use 'janko-m/vim-test'

  -- IDE
  use 'editorconfig/editorconfig-vim'
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'
  use 'terryma/vim-multiple-cursors'
  use 'easymotion/vim-easymotion'
  use 'yggdroot/indentline'
  use 'scrooloose/nerdcommenter'
  use 'adelarsq/vim-matchit'
  use 'AndrewRadev/tagalong.vim'
  use 'mattn/emmet-vim'

  -- Tmux
  use 'christoomey/vim-tmux-navigator'

  -- HTTP Client
  use 'nicwest/vim-http'

  -- Sessions
  use 'xolox/vim-misc'
  use 'xolox/vim-session'

  -- Git
  use 'tpope/vim-fugitive'
  use 'Xuyuanp/nerdtree-git-plugin'
  use 'tpope/vim-repeat'
  use 'APZelos/blamer.nvim'
  use 'mhinz/vim-signify'

  -- Themes
  use 'joshdick/onedark.vim'

end)
