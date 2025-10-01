return {
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {},
		init = function()
			local api = require("nvim-tree.api")
			vim.keymap.set("n", "<C-b>", function()
				api.tree.toggle({ find_file = true })
			end, {
				desc = "nvim-tree: toggle",
				noremap = true,
				silent = true,
				nowait = true,
			})
		end,
	},
	{ "stevearc/oil.nvim", opts = {} },
}
