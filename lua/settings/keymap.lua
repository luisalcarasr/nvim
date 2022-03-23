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
vim.api.nvim_set_keymap('n', '<C-a>', ':NvimTreeToggle<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>af', ':NvimTreeFindFile<cr>', {noremap = true, silent = true});

-- Find
vim.api.nvim_set_keymap('n', '<Leader>ff', ':Telescope find_files<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>fg', ':Telescope live_grep<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<leader>fw', ':Telescope grep_string initial_mode=normal<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<leader>fh', ':Telescope oldfiles initial_mode=normal<cr>', {noremap = true, silent = true});

-- Clipboard History
vim.api.nvim_set_keymap('n', '<leader>ch', ':Telescope neoclip plus initial_mode=normal<cr>', {noremap = true, silent = true});

-- LSP Completion
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {noremap = false, silent = true});
vim.api.nvim_set_keymap('n', 'gy', '<cmd>lua vim.lsp.buf.declaration()<CR>', {noremap = false, silent = true});
vim.api.nvim_set_keymap('n', 'gi', ':Telescope lsp_implementation initial_mode=normal<CR>', {noremap = false, silent = true});
vim.api.nvim_set_keymap('n', 'gf', ':Telescope lsp_code_actions initial_mode=normal<CR>', {noremap = false, silent = true});
vim.api.nvim_set_keymap('n', 'gr', ':Telescope lsp_references initial_mode=normal<CR>', {noremap = false, silent = true});
vim.api.nvim_set_keymap('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', {noremap = false, silent = true});

-- Buffers
vim.api.nvim_set_keymap('n', '<leader>bb', ':Telescope buffers initial_mode=normal<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>bw', ':bw!<cr><cms>lua require"nvim-tree.toggle(false, false)<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<leader>l', ':BufferLineCycleNext<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<leader>h', ':BufferLineCyclePrev<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<leader>L', ':BufferLineMoveNext<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<leader>H', ':BufferLineMovePrev<cr>', {noremap = true, silent = true});


-- Scrolling
vim.api.nvim_set_keymap('n', '<C-j>', '10<C-e>', {noremap = true, silent = true}); -- Doesn't work
vim.api.nvim_set_keymap('n', '<C-k>', '10<C-y>', {noremap = true, silent = true}); -- Doesn't work
vim.api.nvim_set_keymap('n', '<Leader>s', '<Plug>(easymotion-s2)', {noremap = false, silent = true});

-- Git
vim.api.nvim_set_keymap('n', '<leader>gg', ':Git<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<leader>gc', ':Git commit -a<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<leader>gp', ':Git push<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<leader>gl', ':Git pull<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<leader>gs', ':Telescope git_status initial_mode=normal<cr>', {noremap = true, silent = true});

-- ZenMode
vim.api.nvim_set_keymap('n', '<Leader>z', ':ZenMode<cr>', {noremap = true, silent = true});

-- MongoDB
vim.api.nvim_set_keymap('n', '<Leader>d', ':lua require("mongo-nvim.telescope.pickers").database_picker()<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>dp', ':lua require("mongo-nvim.telescope.pickers").database_picker("auxoneDB", "firstName")<cr>', {noremap = true, silent = true});
