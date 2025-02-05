return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'L3MON4D3/LuaSnip',
  },
  config = function()
    require('mason').setup()
    require('mason-lspconfig').setup {
      ensure_installed = { 'lua_ls', 'jedi_language_server', 'volar', 'clangd' },
      automatic_installation = true,
    }

    local lspconfig = require('lspconfig')
    local cmp = require('cmp')

    cmp.setup({
      mapping = cmp.mapping.preset.insert({ -- Use the preset mappings and override as needed
        ["<C-j>"] = cmp.mapping.select_next_item(), -- Move down
        ["<C-k>"] = cmp.mapping.select_prev_item(), -- Move up
        ["<Tab>"] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        }),
        ["<CR>"] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        }),
        ["<C-Space>"] = cmp.mapping.complete(), -- Manually trigger completion
        ["<Esc>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.abort() -- Close completion menu
          else
            fallback() -- Default behavior (exit insert mode)
          end
        end, { "i" }),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
      }),
    })
    -- Configurar LSPs
    require('mason-lspconfig').setup_handlers {
      function(server_name)
        lspconfig[server_name].setup {
          capabilities = require('cmp_nvim_lsp').default_capabilities(),
        }
      end,
    }
  end,
}

