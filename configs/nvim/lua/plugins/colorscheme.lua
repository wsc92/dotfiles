return {
  {
    "catppuccin/nvim",
    lazy = false, -- load immediately
    priority = 1000, -- ensure it loads before other UI plugins
    opts = {
      transparent_background = true, -- equivalent to transparent in your original config
    },
    config = function()
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}

