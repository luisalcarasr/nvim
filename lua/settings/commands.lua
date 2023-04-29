local cmd = vim.api.nvim_create_user_command

cmd("ThemeToggle", 'lua require("onedark").toggle()', {})
