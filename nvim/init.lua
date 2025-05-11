r = require

c = vim.cmd
g = vim.g
o = vim.opt

cmd = vim.api.nvim_create_user_command

require 'config.keymaps'
require 'config.options'
require 'config.dev'
