local ft = {'lua', 'python', 'c', 'ruby'}

local all_ft = {}
for k, v in pairs(ft) do
  all_ft[k] = v
end
table.insert(all_ft, 'cpp')

return {
  {
    'rcarriga/nvim-dap-ui',
    dependencies = { 'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio' },
    opts = {},
    lazy = true,
  },
  {
    'neovim/nvim-lspconfig',
    dependencies = 'williamboman/mason-lspconfig.nvim',
    ft = all_ft,
    config = function()
      for _, f in ipairs(ft) do
        require('plugins.lsp.' .. f)
      end
    end,
  },
  {
    'mfussenegger/nvim-dap',
    lazy = true,
    dependencies = 'jay-babu/mason-nvim-dap.nvim',
  }
}
