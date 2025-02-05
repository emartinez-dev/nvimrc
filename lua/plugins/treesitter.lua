return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    cmd = { 'TSInstall', 'TSBufEnable', 'TSBufDisable' },
    main = 'nvim-treesitter.configs', -- Sets main module to use for opts
    opts = {
      ensure_installed = { 'bash', 'c', 'diff', 'html', 'javascript', 'lua', 'luadoc', 'markdown',
        'markdown_inline', 'python', 'query', 'typescript', 'vim', 'vimdoc' },
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { 'ruby' },
      },
      indent = { enable = true, disable = { 'ruby' } },
    },
  },
}
