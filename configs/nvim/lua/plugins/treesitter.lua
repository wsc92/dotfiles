return {
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "c",
          "lua",
          "vim",
          "vimdoc",
          "query",
          "python",
          "bash",
          "toml",
          "yaml",
          "cmake",
          "cpp",
          "luap",
          "luadoc",
          "java",
          "javascript",
          "asm",
          -- Additional useful parsers
          "json",
          "sql",
          "csv",
          "markdown",
          "regex",
          "dockerfile",
        },
        auto_install = true,
        highlight = {
          enable = true,
        },
        indent = {
          enable = true,
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
          },
        },
      })
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
    },
    config = function()
      local telescope = require("telescope")
      local builtin = require("telescope.builtin")

      telescope.setup({
        -- Default configuration
      })

      -- Keymaps
      vim.keymap.set("n", "sf", builtin.find_files, {})
      vim.keymap.set("n", ";s", builtin.live_grep, {})
      vim.keymap.set("n", ";e", builtin.buffers, {})
      vim.keymap.set("n", ";;", builtin.help_tags, {})
      vim.keymap.set("n", "\\\\", builtin.resume, {})
      vim.keymap.set("n", ";t", builtin.treesitter, {})
      vim.keymap.set("n", ";r", builtin.lsp_references, {})
      vim.keymap.set("n", ";f", builtin.current_buffer_fuzzy_find, {})
      vim.keymap.set("n", "<leader>fP", builtin.find_files, {})
    end,
  },
}
