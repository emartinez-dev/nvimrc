local M = {}

M.general = {
  n = {
    [","] = { "<leader>,", "jump back to the last cursor position", opts = { nowait = true } },
    [" "] = { ":", "command mode" },
    ["o"] = { "o<esc>", "open a new line below the current one" },
    ["O"] = { "O<esc>", "open a new line above the current one" },
    ["n"] = { "nzz", "center the cursor vertically when moving to the next word during a search" },
    ["N"] = { "Nzz", "center the cursor vertically when moving to the previous word during a search" },
    ["Y"] = { "y$", "yank from cursor to the end of line" },
    ["<c-j>"] = { "<c-w>j", "navigate the split view: down" },
    ["<c-k>"] = { "<c-w>k", "navigate the split view: up" },
    ["<c-h>"] = { "<c-w>h", "navigate the split view: left" },
    ["<c-l>"] = { "<c-w>l", "navigate the split view: right" },
    ["<c-up>"] = { "<c-w>+", "resize split windows: increase height" },
    ["<c-down>"] = { "<c-w>-", "resize split windows: decrease height" },
    ["<c-left>"] = { "<c-w>>", "resize split windows: increase width" },
    ["<c-right>"] = { "<c-w><", "resize split windows: decrease width" },
    ["<leader>tc"] = { ":tabnew<cr>", "open a new tab" },
    ["<leader>tq"] = { ":tabclose<cr>", "close the current tab" },
    ["<leader>tn"] = { ":tabnext<cr>", "switch to the next tab" },
    ["<leader>tp"] = { ":tabprevious<cr>", "switch to the previous tab" },
  },
}

return M
