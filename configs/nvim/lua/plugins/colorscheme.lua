return {
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = false, -- load immediately
		priority = 1000, -- ensure it loads before other UI plugins
		opts = {
			transparent = true,
		},
		config = function()
			vim.cmd.colorscheme("solarized-osaka")
		end,
	},
}

