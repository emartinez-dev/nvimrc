-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

local map = vim.keymap.set

map('n', ',', '<leader>,')
map('n', ' ', ':')
map('n', 'o', 'o<esc>')
map('n', 'O', 'O<esc>')
map('n', 'n', 'nzz')
map('n', 'N', 'Nzz')
map('n', 'Y', 'y$')
map('n', '<c-j>', '<c-w>j')
map('n', '<c-k>', '<c-w>k')
map('n', '<c-h>', '<c-w>h')
map('n', '<c-l>', '<c-w>l')
map('n', '<c-up>', '<c-w>+')
map('n', '<c-down>', '<c-w>-')
map('n', '<c-left>', '<c-w>>')
map('n', '<c-right>', '<c-w><')
map('n', '<c-b>', ':NvimTreeToggle<CR>')

map('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
