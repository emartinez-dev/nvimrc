return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  cmd = { 'NvimTreeToggle', 'NvimTreeFocus' },
  config = function()
    require('nvim-tree').setup()
  end,
}
