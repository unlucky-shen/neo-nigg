return {
	-- Formatter (Conform)
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" }, -- => auto-load when saving
		opts = {
			formatters_by_ft = {
				---- Formatters to add ----------
				lua = { "stylua" },
				python = { "black" },
				rust = { "rustfmt" }, -- => Requires Rustup
			},
			---- Format on save ----------
			format_on_save = {
				timeout_ms = 1000,
				lsp_fallback = true,
			},
		},
	},

	---- Debugger (DAP + Mason) ----------
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"jay-babu/mason-nvim-dap.nvim",
			"rcarriga/nvim-dap-ui", -- => optional UI for debugging
			"nvim-neotest/nvim-nio",
		},
		config = function()
			---- Setup Mason DAP ----------
			require("mason-nvim-dap").setup({
				ensure_installed = {
					---- Debuggers to add ----------
					"debugpy", -- => Python
					"codelldb", -- => Rust / C / C++
				},
				automatic_installation = true,
			})

			---- Setup dap-ui ----------
			local dap, dapui = require("dap"), require("dapui")
			dapui.setup()
			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close()
			end
			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close()
			end
		end,
	},
}
