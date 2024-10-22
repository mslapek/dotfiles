return {
  'nvim-lualine/lualine.nvim',
  opts = {
    -- options = {
    --   ignore_focus = {'neo-tree'},
    -- },
    sections = {
      lualine_x = {'os.date("%H:%M")', 'filetype'},
    },
  },
}
