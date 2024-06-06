return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })

      opts.presets.lsp_doc_border = true
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 10000,
    },
  },

  --BufferLine
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
      { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
    },
    opts = {
      options = {
        mode = "tabs",
      },
    },

    --StatusLine
    {
      "nvim-lualine/lualine.nvim",
      event = "VeryLazy",
      opts = {
        options = {
          theme = "gruvbox_dark",
          component_separators = "|",
          -- section_separators = { left = "", right = "" },
          -- section_separators = { left = "", right = "" },
          -- section_separators = "",
        },
      },
    },

    -- Filename
    {
      "b0o/incline.nvim",
      event = "BufReadPre",
      priority = 1200,
      config = function()
        require("incline").setup({
          highlight = {
            groups = {},
          },
          window = { margin = { vertical = 0, horizontal = 1 } },
          hide = {
            cursorline = true,
          },
          render = function(props)
            local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
            if vim.bo[props.buf].modified then
              filename = "[+]" .. filename
            end

            local icon, color = require("nvim-web-devicons").get_icon_color(filename)

            return { { icon, guifg = color }, { " " }, { filename } }
          end,
        })
      end,
    },
  },
}
