local overrides = require "custom.configs.overrides"

return {
	{'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async', lazy = false},
	{ "Mofiqul/vscode.nvim" , lazy = false },
	{ "hrsh7th/nvim-cmp",
		opts = {
		  sources = {
			{ name = "nvim_lsp", group_index = 2 },
			{ name = "buffer",   group_index = 2 },
			{ name = "path",     group_index = 2 },
		  },
		},
	  },
	{ "Diogo-ss/42-header.nvim",
		lazy = false ,
		config = function()
			local header = require("42header")
			header.setup({
				default_map = true,
				auto_update = true,
				user = "franmart",
				mail = "franmart@student.42malaga.com"
		})
		end
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{
				"jose-elias-alvarez/null-ls.nvim",
				config = function()
					require "custom.configs.null-ls"
				end,
			}
		},
		config = function()
			require "plugins.configs.lspconfig"
			require "custom.configs.lspconfig"
		end,
	},
	{ "nvim-treesitter/nvim-treesitter", opts = overrides.treesitter },
	{ "williamboman/mason.nvim", opts = overrides.mason },
}
