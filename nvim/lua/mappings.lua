require "nvchad.mappings"

local map = vim.keymap.set

map("n", ",", "<leader>,")
map("n", " ", ":")
map("n", "o", "o<esc>")
map("n", "O", "O<esc>")
map("n", "n", "nzz")
map("n", "N", "Nzz")
map("n", "Y", "y$")
map("n", "<c-j>", "<cw>j")
map("n", "<c-k>", "<cw>k")
map("n", "<c-h>", "<cw>h")
map("n", "<c-l>", "<cw>l")
map("n", "<c-up>", "<-w>+")
map("n", "<c-down>", "<c-w>-")
map("n", "<c-left>", "<c-w>>")
map("n", "<c-right>","<c-w><")
map("n", "<leader>tc", ":tabnew<cr>")
map("n", "<leader>tq", ":tabclose<cr>")
map("n", "<leader>tn", ":tabnext<cr>")
map("n", "<leader>tp", ":tabprevious<cr>")
