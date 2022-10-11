require('plugins')

-- basic
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 10
vim.opt.sidescroll = 5
vim.opt.termguicolors = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.g.mapleader = ','

vim.g.python2_host_prog = '/usr/bin/python'
vim.g.python3_host_prog = '/usr/bin/python3'

-- colorscheme
vim.cmd('colorscheme solarized')

-- simple setup
require('lualine').setup()
require('bufferline').setup()
require('Comment').setup()

-- config
require('config.nvim-tree')
require('config.nvim-treesitter')
require('config.nvim-treesitter-textobjects')
require('config.telescope')
require('config.gitsigns')
require('config.coc')
require('config.ale')
require('config.vista')
require('config.wilder')
require('config.auto-session')
