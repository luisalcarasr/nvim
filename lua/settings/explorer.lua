require("nvim-tree").setup({
    hijack_netrw = true,
    view = {
        width = 40,
        hide_root_folder = true,
    },
    actions = {
        open_file = {
            quit_on_open = false,
        },
    },
})

-- vim.cmd 'NvimTreeOpen'
