return {
  -- Colorschemes
  { "ellisonleao/gruvbox.nvim" },
  { "navarasu/onedark.nvim" },
  { "Mofiqul/dracula.nvim" },

  -- Configure LazyVim to load colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
}
