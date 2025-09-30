return {
	{
		"nvim-treesitter/nvim-treesitter",
		cmd = "TSUpdate",
		opts = {
			ensure_installed = {
				"c",
				"lua",
				"markdown",
				"vimdoc",
				"html",
				"css",
				"typescript",
				"tsx",
				"svelte",
				"python",
				"latex",
			},
			highlight = { enable = true },
		},
		main = "nvim-treesitter.configs",
	},
}

