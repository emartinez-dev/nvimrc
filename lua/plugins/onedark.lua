return {
  "navarasu/onedark.nvim",
  config = function ()
    require("onedark").setup({
      style = 'darker', -- Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
      term_colors = true, -- Change terminal color as per the selected theme style

      -- Custom Highlights --
      colors = {}, -- Override default colors
      highlights = {}, -- Override highlight groups

    })
    vim.cmd('colorscheme onedark')
    end
 }
