return {
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {
      search = {
        forward = true,
        multi_window = false,
        wrap = false,
        incremental = true,
      },
    },
  },

  --Animations
  {
    "echasnovski/mini.hipatterns",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.scroll = {
        enable = false,
      }
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      table.insert(opts.sources, { name = "emoji" })
    end,
  },

  {
    "dinhhuy258/git.nvim",
    event = "BufReadPre",
    opts = {
      keymaps = {
        -- Open blame window
        blame = "<Leader>gb",
        -- Open file/folder in git repository
        browse = "<Leader>go",
      },
    },
  },
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function() -- Remove the unused '_' parameter
      local logo = [[
       ██████╗ ██████╗  ██████╗  ███████╗███╗   ██╗████████╗
       ██╔════╝██╔═══██╗██╔════╝ ██╔════╝████╗  ██║╚══██╔══╝
       ██║     ██║   ██║██║  ███╗█████╗  ██╔██╗ ██║   ██║   
       ██║     ██║   ██║██║   ██║██╔══╝  ██║╚██╗██║   ██║   
       ╚██████╗╚██████╔╝╚██████╔╝███████╗██║ ╚████║   ██║   
        ╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝╚═╝  ╚═══╝   ╚═╝   
        
        @spencercraig92
      ]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"
      return {
        theme = "doom",
        config = {
          header = vim.split(logo, "\n"),
          center = {
            { action = "Telescope find_files", desc = " Find file", icon = " ", key = "f" },
            { action = "ene | startinsert", desc = " New file", icon = " ", key = "n" },
            { action = "Telescope oldfiles", desc = " Recent files", icon = " ", key = "r" },
            { action = "Telescope live_grep", desc = " Find text", icon = " ", key = "g" },
            { action = "qa", desc = " Quit", icon = " ", key = "q" },
          },
          footer = function()
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
          end,
        },
      }
    end,
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
}
