return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = "VeryLazy",
	config = function()
		-- Dynamically get the background color of the statusline
		local statusline_bg = vim.api.nvim_get_hl_by_name("StatusLine", true).background or "#1c1c1c"
		local section_bg = vim.api.nvim_get_hl_by_name("Normal", true).background or "#2e2e2e"
		vim.api.nvim_set_hl(0, "LualineSeparator", { fg = statusline_bg, bg = statusline_bg })
		vim.api.nvim_set_hl(0, "LualineSectionSeparator", { fg = statusline_bg, bg = statusline_bg })

		require("lualine").setup({
			options = {
				theme = "auto",
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				globalstatus = true,
			},
			sections = {
				lualine_a = { { "mode", separator = { left = "" }, right_padding = 1 } },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { "filename" },
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { { "location", separator = { right = "" }, left_padding = 1 } },
			},
			inactive_sections = {
				lualine_a = { "filename" },
				lualine_z = { "location" },
			},
		})
	end,
}
