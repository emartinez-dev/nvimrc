local M = {}

M.treesitter = {
	ensure_installed = {
		"vim",
		"c",
		"cpp",
		"markdown",
		"bash",
		"html",
		"python",
		"json",
		"javascript",
	}
}

M.mason = {
	ensure_installed = {
		"clangd",
		"python-lsp-server",
		"clang-format",
		"html-lsp",
		"css-lsp",
		"html-lsp",
		"typescript-language-server",
		"prettier",
		"emmet-ls",
		"json-lsp",
		"shfmt",
		"shellcheck",
		"bash-language-server",
	}
}

return M
