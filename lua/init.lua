require('basic')
require('plugins')

-- simple config
require('lualine').setup { options = { theme = 'everforest' } }
require('Comment').setup()
require('alpha').setup(require'alpha.themes.startify'.config)

-- config
require('config.mason')
require('config.nvim-tree')
require('config.nvim-treesitter')
require('config.nvim-treesitter-textobjects')
require('config.nvim-lspconfig')
require('config.nvim-cmp')
require('config.telescope')
require('config.gitsigns')
require('config.bufferline')
require('config.lspsaga')
require('config.hop')
