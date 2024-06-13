return {
  {
    "savq/melange-nvim",
  },
  {
    "rebelot/kanagawa.nvim",
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = {
      overrides = {
        ["lsp.type.method"] = { fg = "#ff9900" },
        ["@comment.lua"] = { fg = "#4a4c4d" },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
--Here is a comments
