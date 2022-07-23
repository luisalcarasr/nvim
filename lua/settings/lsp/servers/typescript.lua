local configuration = require('lspconfig')
local common = require('settings.lsp.servers.common')

configuration.tsserver.setup {
  filetypes = {"javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx"};
  capabilities = common.capabilities;
  root_dir = configuration.util.root_pattern('.git');
}
