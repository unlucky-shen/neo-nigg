return {
	{
		"nvim-telescope/telescope.nvim",
		event = "VimEnter",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			local TS = require("telescope")
			TS.setup({
				defaults = { file_ignore_patterns = { "node_modules" } },
				extensions = { ["ui-select"] = { require("telescope.themes").get_dropdown() } },
				pickers = {
					find_files = {
						hidden = true,
						find_command = {
							"rg",
							"--files",
							"--glob",
							"!{.git/*,.svelte-kit/*,target/*,node_modules/*}",
							"--path-separator",
							"/",
						},
					},
				},
			})

			pcall(TS.load_extension, "fzf")
			pcall(TS.load_extension, "ui-select")

			-- See `:help telescope.builtin`
			local builtin = require("telescope.builtin")
			local map = function(kmap, func, desc)
				vim.keymap.set("n", kmap, func, { desc = desc })
			end
			map("<leader>sh", builtin.help_tags, "[S]earch [H]elp")
			map("<leader>sk", builtin.keymaps, "[S]earch [K]eymaps")
			map("<leader><leader>", builtin.find_files, "[S]earch [F]iles")
			map("<leader>ss", builtin.builtin, "[S]earch [S]elect Telescope")
			map("<leader>sw", builtin.grep_string, "[S]earch current [W]ord")
			map("<leader>sg", builtin.live_grep, "[S]earch by [G]rep")
			map("<leader>sd", builtin.diagnostics, "[S]earch [D]iagnostics")
			map("<leader>sr", builtin.resume, "[S]earch [R]esume")
			map("<leader>s.", builtin.oldfiles, '[S]earch Recent Files ("." for repeat)')
			map("<leader>sb", builtin.buffers, "[ ] Find existing buffers")

			map("<leader>/", function()
				builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
					winblend = 10,
					previewer = false,
				}))
			end, "[/] Fuzzily search in current buffer")

			map("<leader>s/", function()
				builtin.live_grep({
					grep_open_files = true,
					prompt_title = "Live Grep in Open Files",
				})
			end, "[S]earch [/] in Open Files")

			map("<leader>sn", function()
				builtin.find_files({ cwd = vim.fn.stdpath("config") })
			end, "[S]earch [N]eovim files")
		end,
	},
}
