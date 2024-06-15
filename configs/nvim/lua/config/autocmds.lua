-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- Sets colors to line numbers Above, Current and Below in this orders
function LineNumberColors()
  vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#d4be98", bold = true })
  vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ea6962", bold = true })
  vim.api.nvim_set_hl(0, "LineNr", { fg = "#ea6962", bold = true })
  vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#d4be98", bold = true })
  vim.api.nvim_set_hl(0, "Comment", { fg = "#8497a8", bold = true })
end

LineNumberColors()
