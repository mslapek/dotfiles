return {
  -- {
  --   'loctvl842/monokai-pro.nvim',
  --   priority = 1000,
  --   config = function()
  --     require('monokai-pro').setup {
  --       styles = {
  --         comment = { italic = false },
  --       },
  --     }
  --     vim.cmd.colorscheme 'monokai-pro-spectrum'
  --   end,
  -- },

  -- {
  --   "catppuccin/nvim",
  --   priority = 1000,
  --   name = "catppuccin",
  -- },

  -- {
  --   "folke/tokyonight.nvim",
  --   priority = 1000,
  --   config = function()
  --     require('tokyonight').setup {}
  --     vim.cmd.colorscheme 'tokyonight-night'
  --   end,
  -- },

  {
    "EdenEast/nightfox.nvim",
    priority = 1000,
    config = function()
      require('nightfox').setup {}
      vim.cmd.colorscheme 'duskfox'
    end,
  },
}
