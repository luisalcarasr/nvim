-- Status Bar
require 'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '|', right = '|'},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff',
                  {'diagnostics', sources={'nvim_lsp'}}},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

-- Syntax
vim.g.rainbow_enable = 1

-- Tags
vim.g.closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

-- Sessions
vim.g.session_autosave='yes'
vim.g.session_autoload='yes'

-- Spelling
vim.g.enable_spelunker_vim = 0
vim.g.spelunker_max_hi_words_each_buf = 2048

-- Markdown
vim.g.vim_markdown_conceal = 0
vim.g.vim_markdown_conceal_code_blocks = 0
vim.g.vim_markdown_folding_disabled = 1

-- Git
vim.g.blamer_enabled=1
vim.g.blamer_delay=200

-- Syntax
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  autotag = {
    enable = true,
    filetypes = { 'html', 'xml', 'tsx', 'typescriptreact'},
  }
}

-- Buffers
vim.g.bufferline = {
  auto_hide = true,
}

-- Zen Mode
require("zen-mode").setup {
  width = 130,
}

-- Autocomplete Menu
local cmp = require('cmp')
cmp.setup {
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
}

-- Snippets
require("luasnip.loaders.from_snipmate").load()

-- Sudo
vim.g.suda_smart_edit = 1
