local run = vim.api.nvim_command
local fn = vim.fn
local path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(path)) > 0 then
  local repo = 'https://github.com/wbthomason/packer.nvim '
  run('!git clone --depth 1 ' .. repo .. path)
  run('packadd packer.nvim')
end

vim.cmd 'autocmd BufWritePost packages.lua PackerSync'

require('packer').init()
require('packages')
