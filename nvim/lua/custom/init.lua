--[[ Useful stuff
Forgot the commands?
	:NvCheatsheet
	:Telescope keymaps
	,ch
Open sidebar:
	Ctrl-N
Buffer:
	new: ,b
	close: ,x
	change: tab

--]]

require "custom.autocmds"

local opt = vim.opt
local g = vim.g
local config = require("core.utils").load_config()

-------------------------------------- globals ------------------------------------------
g.mapleader = ","

-------------------------------------- options ------------------------------------------

opt.cursorline = true

--- Indenting
opt.expandtab = false
opt.shiftwidth = 4
opt.tabstop = 4

-- Numbers
opt.relativenumber = true
opt.numberwidth = 1

opt.foldmethod = "expr"
opt.foldexpr = 'nvim_treesitter#foldexpr()'
opt.foldlevel = 99

vim.g.vscode_snippets_path = "~/.config/nvim/lua/custom/snippets"

