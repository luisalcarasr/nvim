-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local key = vim.keymap
local groups = require("which-key")

groups.register({
  ["<leader>"] = {
    t = { name = "terminal" }, -- Terminal
  },
})

-- Terminal

key.set(
  { "n", "v" },
  "<c-t>",
  '<cmd>exe v:count1 . "ToggleTerm"<cr>',
  { desc = "Toggle terminal", silent = true, noremap = true }
)
key.set(
  "i",
  "<c-t>",
  '<esc><cmd>exe v:count1 . "ToggleTerm"<cr>',
  { desc = "Toggle terminal", silent = true, noremap = true }
)
key.set("t", "<c-t>", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminal", silent = true, noremap = true })
key.set("n", "<leader>tt", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminal", silent = true, noremap = true })
key.set(
  "n",
  "<leader>tl",
  "<cmd>ToggleTermSendCurrentLine<cr>",
  { desc = "Send current line", silent = true, noremap = true }
)
key.set(
  "v",
  "<leader>tl",
  "<cmd>ToggleTermSendVisualLines<cr>",
  { desc = "Send visual lines", silent = true, noremap = true }
)
key.set(
  "v",
  "<leader>ts",
  "<cmd>ToggleTermSendVisualSelection<cr>",
  { desc = "Send visual selection", silent = true, noremap = true }
)
key.set("t", "<leader>tn", "<cmd>ToggleTermSetName<cr>", { desc = "Set name", silent = true, noremap = true })
key.set(
  "n",
  "<leader>ta",
  "<cmd>ToggleTermToggleAll<cr>",
  { desc = "Toggle all terminals", silent = true, noremap = true }
)
