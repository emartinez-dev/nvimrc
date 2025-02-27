-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
require('lazy').setup({
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  require 'plugins/mason', -- LSP and stuff
  require 'plugins/lsp-stuff', -- More LSP and stuff
  require 'plugins/treesitter', -- Syntax highlighting
  require 'plugins/barbar', -- Tabs bar
  require 'plugins/nvim-tree', -- File manager sidebar
  require 'plugins/onedark', -- VSCode theme
  require 'plugins/lualine', -- Status line
  require 'plugins/telescope', -- Fuzzy finder
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
    },
  },
})
