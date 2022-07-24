local run = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local repo = 'https://github.com/wbthomason/packer.nvim '

if fn.empty(fn.glob(install_path)) > 0 then
  run ('!git clone ' .. repo .. install_path)
  run 'packadd packer.nvim'
end

vim.cmd 'autocmd BufWritePost packages.lua PackerSync' -- Auto compile when there are changes in plugins.lua
vim.cmd 'autocmd BufWritePost packages.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

local packages = require('packages')

require('packer').init({display = {auto_clean = false}})
require('packer').startup(packages)
