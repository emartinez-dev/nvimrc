local null_ls = require "null-ls"

local format = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
	format.clang_format,
}

null_ls.setup {
	sources = sources,
}
