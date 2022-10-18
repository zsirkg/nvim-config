require('basic')
require('plugins')

-- simple config
require('lualine').setup { options = { theme = 'everforest' } }
require('Comment').setup()

-- config
require('config.nvim-tree')
require('config.nvim-treesitter')
require('config.nvim-treesitter-textobjects')
require('config.nvim-lspconfig')
require('config.nvim-cmp')
require('config.telescope')
require('config.gitsigns')
require('config.bufferline')
require('config.lspsaga')
