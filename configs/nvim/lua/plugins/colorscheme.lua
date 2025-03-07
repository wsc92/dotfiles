return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = true,
    opts = {
      flavour = "mocha", -- Choose from latte, frappe, macchiato, mocha
      integrations = {
        treesitter = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "underline" },
            warnings = { "undercurl" },
            information = { "underline" },
          },
        },
      },
    },
  },
  -- Configure LazyVim to load Catppuccin
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
