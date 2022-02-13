vim.g.mapleader=" "

-- split resize
vim.api.nvim_set_keymap('n', '<Leader>>', '10<C-w>>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader><', '10<C-w><', {noremap = true, silent = true});

-- quick semi
vim.api.nvim_set_keymap('n', '<Leader>;', '$a;<Esc>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>,', '$a,<Esc>', {noremap = true, silent = true});

vim.api.nvim_set_keymap('n', '<Leader>w', ':w!<CR>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>qq', ':q<CR>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>qa', ':qa<CR>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>qx', ':x<CR>', {noremap = true, silent = true});

-- Explorer
vim.api.nvim_set_keymap('n', '<Leader>aa', ':NvimTreeToggle<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>af', ':NvimTreeFindFile<cr>', {noremap = true, silent = true});

-- Find
vim.api.nvim_set_keymap('n', '<Leader>ff', ':Telescope find_files<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>fg', ':Telescope live_grep<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<leader>fw', ':Telescope grep_string<cr>', {noremap = true, silent = true});
-- vim.api.nvim_set_keymap('n', '<leader>ft', ':Telescope live_grep "<C-R>=expand("<cword>")<CR>":<CR>', {noremap = true, silent = true});
-- Clipboard History
vim.api.nvim_set_keymap('n', '<leader>ch', ':Telescope neoclip plus initial_mode=normal<cr>', {noremap = true, silent = true});

-- Use <c-space> to trigger completion. inoremap <silent><expr> <c-space> coc#refresh()
 
-- Remap keys for gotos
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {noremap = false, silent = true});
vim.api.nvim_set_keymap('n', 'gy', '<cmd>lua vim.lsp.buf.declaration()<CR>', {noremap = false, silent = true});
vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', {noremap = false, silent = true});
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', {noremap = false, silent = true});
vim.api.nvim_set_keymap('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', {noremap = false, silent = true});

-- diagnostics
-- nnoremap <leader>kp :let @*=expand("%")<CR>

-- tabs navigation
vim.api.nvim_set_keymap('n', '<Leader>h', ':tabprevious<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>l', ':tabnext<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>t', ':tabnew<cr>', {noremap = true, silent = true});

-- Buffers
vim.api.nvim_set_keymap('n', '<Leader>j', ':bn<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>k', ':bp<cr>', {noremap = true, silent = true});


-- faster scrolling
vim.api.nvim_set_keymap('n', '<C-j>', '10<C-e>', {noremap = true, silent = true}); -- Doesn't work
vim.api.nvim_set_keymap('n', '<C-k>', '10<C-y>', {noremap = true, silent = true}); -- Doesn't work
vim.api.nvim_set_keymap('n', '<Leader>s', '<Plug>(easymotion-s2)', {noremap = false, silent = true});

-- git
vim.api.nvim_set_keymap('n', 'G', ':Git<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', 'gp', ':Git push<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', 'gl', ':Git pull<cr>', {noremap = true, silent = true});

-- emmet
vim.g.user_emmet_leader_key='<C-x>'


-- Use <c-space> to trigger completion.
-- if &filetype == "javascript-- || &filetype == "python"
--   inoremap <c-space> <C-x><C-u>
-- else
--   inoremap <silent><expr> <c-space> coc#refresh()
-- endif

-- Debugging

-- ZenMode
vim.api.nvim_set_keymap('n', '<Leader>z', ':ZenMode<cr>', {noremap = true, silent = true});

-- MongoDB
vim.api.nvim_set_keymap('n', '<Leader>d', ':lua require("mongo-nvim.telescope.pickers").database_picker()<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>dp', ':lua require("mongo-nvim.telescope.pickers").database_picker("auxoneDB", "firstName")<cr>', {noremap = true, silent = true});
