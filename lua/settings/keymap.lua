vim.g.mapleader=" "

-- split resize
vim.api.nvim_set_keymap('n', '<Leader>>', '10<C-w>>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader><', '10<C-w><', {noremap = true, silent = true});

-- quick semi
vim.api.nvim_set_keymap('n', '<Leader>;', '$a;<Esc>', {noremap = true, silent = true});

vim.api.nvim_set_keymap('n', '<Leader>w', ':w<CR>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>qq', ':q<CR>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>qa', ':qa<CR>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>x', ':x<CR>', {noremap = true, silent = true});

-- plugs
vim.api.nvim_set_keymap('n', '<C-a>', ':NvimTreeToggle<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>nt', ':NvimTreeFindFile<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>p', ':Telescope find_files<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>rg', ':Telescope live_grep<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>ag', ':Ag<cr>', {noremap = true, silent = true});

-- Use <c-space> to trigger completion. inoremap <silent><expr> <c-space> coc#refresh()
 
-- Remap keys for gotos
vim.api.nvim_set_keymap('n', 'gd', '<Plug>(coc-definition)', {noremap = false, silent = true});
vim.api.nvim_set_keymap('n', 'gy', '<Plug>(coc-type-definition)', {noremap = false, silent = true});
vim.api.nvim_set_keymap('n', 'gi', '<Plug>(coc-implementation)', {noremap = false, silent = true});
vim.api.nvim_set_keymap('n', 'gr', '<Plug>(coc-references)', {noremap = false, silent = true});

-- diagnostics
-- nnoremap <leader>kp :let @*=expand("%")<CR>

-- tabs navigation
vim.api.nvim_set_keymap('n', '<Leader>h', ':tabprevious<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>l', ':tabnext<cr>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<Leader>t', ':tabnew<cr>', {noremap = true, silent = true});

-- buffers
-- map <Leader>ob :Buffers<cr>
vim.api.nvim_set_keymap('n', '<Leader>ob', ':Buffers<cr>', {noremap = true, silent = true});


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

-- Find
vim.api.nvim_set_keymap('n', '<leader>ff', ':Rg <C-R>=expand("<cword>")<CR><CR>', {noremap = true, silent = true});
vim.api.nvim_set_keymap('n', '<leader>ft', ':Rg "<C-R>=expand("<cword>")<CR>":<CR>', {noremap = true, silent = true});

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
