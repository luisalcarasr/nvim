vim.g.mapleader=" "

-- Panel Resizing,
vim.api.nvim_set_keymap('n', '<Leader><', '10<C-w>>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>>', '10<C-w><', {noremap = true, silent = true});

-- Semicolon and Comma
vim.api.nvim_set_keymap('n', '<Leader>;', '$a;<Esc>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>,', '$a,<Esc>', {noremap = true, silent = true});

-- Save and Close
vim.api.nvim_set_keymap('n', '<Leader>w', ':w!<CR>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>qq', ':q<CR>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>qa', ':qa<CR>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>qx', ':x<CR>', {noremap = true, silent = true});

-- Explorer
vim.api.nvim_set_keymap('n', '<Leader>aa', ':NvimTreeOpen<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>af', ':NvimTreeFindFile<cr>', {noremap = true, silent = true});

-- Find
vim.api.nvim_set_keymap('n', '<Leader>ff', ':Telescope find_files<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>fg', ':Telescope live_grep<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<leader>fw', ':Telescope grep_string initial_mode=normal<cr>', {noremap = true, silent = true});

-- Clipboard History
vim.api.nvim_set_keymap('n', '<leader>ch', ':Telescope neoclip plus initial_mode=normal<cr>', {noremap = true, silent = true});

-- LSP Completion
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {noremap = false, silent = true});
vim.api.nvim_set_keymap('n', 'gy', '<cmd>lua vim.lsp.buf.declaration()<CR>', {noremap = false, silent = true});
vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', {noremap = false, silent = true});
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', {noremap = false, silent = true});
vim.api.nvim_set_keymap('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', {noremap = false, silent = true});

-- Buffers
vim.api.nvim_set_keymap('n', '<leader>bb', ':Telescope buffers initial_mode=normal<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>bw', ':bw!<CR>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<leader>l', ':BufferLineCycleNext<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<leader>h', ':BufferLineCyclePrev<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<leader>L', ':BufferLineMoveNext<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<leader>H', ':BufferLineMovePrev<cr>', {noremap = true, silent = true});


-- Scrolling
vim.api.nvim_set_keymap('n', '<C-j>', '10<C-e>', {noremap = true, silent = true}); -- Doesn't work
vim.api.nvim_set_keymap('n', '<C-k>', '10<C-y>', {noremap = true, silent = true}); -- Doesn't work
vim.api.nvim_set_keymap('n', '<Leader>s', '<Plug>(easymotion-s2)', {noremap = false, silent = true});

-- Git
vim.api.nvim_set_keymap('n', 'G', ':Git<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', 'gp', ':Git push<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', 'gl', ':Git pull<cr>', {noremap = true, silent = true});

-- ZenMode
vim.api.nvim_set_keymap('n', '<Leader>z', ':ZenMode<cr>', {noremap = true, silent = true});

-- MongoDB
vim.api.nvim_set_keymap('n', '<Leader>d', ':lua require("mongo-nvim.telescope.pickers").database_picker()<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>dp', ':lua require("mongo-nvim.telescope.pickers").database_picker("auxoneDB", "firstName")<cr>', {noremap = true, silent = true});
