return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  config = function()
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }

    -- Move to previous/next
    map('n', '<S-tab>', '<Cmd>BufferPrevious<CR>', opts)
    map('n', '<tab>', '<Cmd>BufferNext<CR>', opts)

    -- Goto buffer in position...
    map('n', '<c-1>', '<Cmd>BufferGoto 1<CR>', opts)
    map('n', '<c-2>', '<Cmd>BufferGoto 2<CR>', opts)
    map('n', '<c-3>', '<Cmd>BufferGoto 3<CR>', opts)
    map('n', '<c-4>', '<Cmd>BufferGoto 4<CR>', opts)
    map('n', '<c-5>', '<Cmd>BufferGoto 5<CR>', opts)
    map('n', '<c-6>', '<Cmd>BufferGoto 6<CR>', opts)
    map('n', '<c-7>', '<Cmd>BufferGoto 7<CR>', opts)
    map('n', '<c-8>', '<Cmd>BufferGoto 8<CR>', opts)
    map('n', '<c-9>', '<Cmd>BufferGoto 9<CR>', opts)
    map('n', '<c-0>', '<Cmd>BufferLast<CR>', opts)

        -- Close buffer
    map('n', '<leader>x', '<Cmd>BufferClose<CR>', opts)

    -- Sort automatically by directory
    map('n', '<leader><tab>', '<Cmd>BufferOrderByDirectory<CR>', opts)

  end,
  opts = {
  },
}
