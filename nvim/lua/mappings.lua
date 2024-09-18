require "nvchad.mappings"

local map = vim.keymap.set

map("n", ",", "<leader>,")
map("n", " ", ":")
map("n", "o", "o<esc>")
map("n", "O", "O<esc>")
map("n", "n", "nzz")
map("n", "N", "Nzz")
map("n", "Y", "y$")
map("n", "<c-j>", "<c-w>j")
map("n", "<c-k>", "<c-w>k")
map("n", "<c-h>", "<c-w>h")
map("n", "<c-l>", "<c-w>l")
map("n", "<c-up>", "<c-w>+")
map("n", "<c-down>", "<c-w>-")
map("n", "<c-left>", "<c-w>>")
map("n", "<c-right>","<c-w><")
map("n", "<leader>tc", ":tabnew<cr>")
map("n", "<leader>tq", ":tabclose<cr>")
map("n", "<leader>tn", ":tabnext<cr>")
map("n", "<leader>tp", ":tabprevious<cr>")
