local mason_lsp_installed = {
  'lua_ls',
  'pyright',
}

if vim.loop.os_uname().sysname == 'Darwin' then
  table.insert(mason_lsp_installed, 'clangd')
end

return {
  {
    'williamboman/mason.nvim',
    opts = {},
  },
  {
    'williamboman/mason-lspconfig.nvim',
    opts = {
      ensure_installed = mason_lsp_installed,
    },
    lazy = true,
  },
  {
    'jay-babu/mason-nvim-dap.nvim',
    opts = {
      ensure_installed = {
        'python',
        'codelldb',
      },
      handlers = {},
    },
    lazy = true,
  },
}
