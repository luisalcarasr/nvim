vim.opt.hlsearch = true;
vim.opt.nu = true;
vim.opt.cindent = true;
vim.opt.autoindent = true;
vim.opt.smartindent = true;
vim.opt.tabstop = 2;
vim.opt.shiftwidth = 2;
vim.opt.expandtab = true;
vim.opt.cursorline = true; 
vim.opt.clipboard= 'unnamed';
vim.opt.number = true;
vim.opt.mouse = 'a';
vim.opt.numberwidth = 1
vim.opt.showcmd = true;
vim.opt.ruler = true;
vim.opt.cursorline = true;
vim.opt.encoding='utf-8';
vim.opt.showmatch = true;
vim.opt.relativenumber = true;
vim.opt.laststatus = 2
vim.opt.hlsearch = true;
vim.opt.incsearch = true;
vim.opt.ignorecase = true;
vim.opt.smartcase = true;

vim.cmd('syntax on ')
vim.cmd('set nocompatible')
vim.cmd('set t_Co=256')
vim.cmd('set nobackup')
vim.cmd('set nowritebackup');
vim.cmd('set noerrorbells visualbell');
vim.cmd('set noshowmode');
vim.cmd('autocmd FileType typescript setlocal completeopt-=menu');
vim.cmd('filetype plugin indent on');

vim.cmd('source ~/.config/nvim/autoload/plug.vim')
vim.cmd('source ~/.config/nvim/plugins.vim')
vim.cmd('source ~/.config/nvim/shortcuts.vim')
vim.cmd('source ~/.config/nvim/plugin-config.vim')

vim.cmd('colorscheme onedark');
vim.cmd('highlight Normal ctermbg=NONE');
