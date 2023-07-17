require("nvim-tree").setup({
    hijack_netrw = true,
    view = {
        width = 40,
    },
    renderer = {
        root_folder_label = false,
    },
    actions = {
        open_file = {
            quit_on_open = false,
        },
    },
})

-- vim.cmd 'NvimTreeOpen'
