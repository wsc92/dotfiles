return {
  { "nvim-neotest/nvim-nio" },
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dap.adapters.gdb = {
        type = "executable",
        command = "gdb",
        args = { "-i", "dap" },
      }
      dap.configurations.c = {
        {
          name = "Launch",
          type = "gdb",
          request = "launch",
          program = function()
            return vim.fn.input(vim.fn.getcwd())
          end,
          cwd = "${workspaceFolder}",
          stopAtBeginningOfMainSubprogram = false,
        },
      }
      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end

      -- Debugging
      vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, {})
      vim.keymap.set("n", "<leader>dr", dap.clear_breakpoints, {})
      vim.keymap.set("n", "<leader>dl", dap.list_breakpoints, {})
      vim.keymap.set("n", "<leader>dc", dap.continue, {})
    end,
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function()
      local path = "~/.virtualenvs/debugpy/bin/python"
      require("dap-python").setup(path)
    end,
  },
}