return {
	{ "Mofiqul/vscode.nvim" , lazy = false },
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
}
