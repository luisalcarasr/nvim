local configuration = require("lspconfig")

configuration.lua_ls.setup({
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            },
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enable = false,
            },
        },
    },
})

vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function()
        require("stylua-nvim").format_file()
    end,
    pattern = { "*.lua" },
})
