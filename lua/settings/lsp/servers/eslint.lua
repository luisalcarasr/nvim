local configuration = require("lspconfig")
local common = require("settings.lsp.servers.common")

configuration.eslint.setup({
    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
    capabilities = common.capabilities,
    -- root_dir = configuration.util.root_pattern('.git');
})

vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function()
        -- vim.lsp.buf.execute_command({ command = "_typescript.organizeImports", arguments = {vim.fn.expand("%:p")} })
        -- vim.cmd('sleep 300m')
        if vim.fn.exists(':EslintFixAll') > 0 then
            vim.cmd("EslintFixAll")
        end
    end,
    pattern = { "*.js", "*.jsx", "*.ts", "*.tsx" },
})
