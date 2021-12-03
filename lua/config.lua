-- HTML, JSX
vim.g.closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

-- Status Bar
require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff',
                  {'diagnostics', sources={'nvim_lsp', 'coc'}}},
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

vim.g.mta_filetypes = {
  html = 1,
  xhtml = 1,
  xml = 1,
  jinja = 1,
  tsx = 1,
  jsx = 1,
}

--  nerdtree
vim.g.NERDTreeShowHidden=1
vim.g.NERDTreeQuitOnOpen=1
vim.g.NERDTreeAutoDeleteBuffer=1
vim.g.NERDTreeMinimalUI=1
vim.g.NERDTreeDirArrows=1
vim.g.NERDTreeShowLineNumbers=1
vim.g.NERDTreeMapOpenInTab='\t'
vim.g.NERDTreeShowBookmarks=1
vim.g.NERDTreeWinSize=50


vim.g.javascript_plugin_flow = 1

-- coc
vim.cmd 'autocmd FileType python vim.g.b:coc_suggest_disable = 1'
vim.cmd 'autocmd FileType javascript vim.g.b:coc_suggest_disable = 1'
vim.cmd 'autocmd FileType scss setl iskeyword+=@-@'

-- Sessions
vim.g.session_autosave='yes'
vim.g.session_autoload='yes'

-- vim fugitive
-- vim.cmd 'command! -bang -nargs=? -complete=dir GFiles
--  \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)'
-- 
-- vim.cmd 'command! -bang -nargs=* Ag
--  \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)'
-- 
-- vim.cmd 'command! -bang -nargs=? -complete=dir Files
--  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)'

-- vim.cmd 'let $FZF_DEFAULT_OPTS=----layout=reverse --preview \'bat --color=always --style=header,grid --line-range :300 {}\'"'

-- Spell
vim.g.enable_spelunker_vim = 0
vim.g.spelunker_max_hi_words_each_buf = 2048

-- Markdown
vim.g.vim_markdown_conceal = 0
vim.g.vim_markdown_conceal_code_blocks = 0

-- Git
vim.g.blamer_enabled=1
vim.g.blamer_delay=200

-- CoC
vim.g.coc_disable_startup_warning = 1

