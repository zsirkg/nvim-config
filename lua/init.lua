require('plugins')
require('basic')

-- simple config
require('Comment').setup()
-- require('modicator').setup()
require('git-conflict').setup()
require('alpha').setup(require'alpha.themes.startify'.config)
require('lsp-progress').setup()
require("toggleterm").setup()

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
require('config.lualine')
require('config.lspsaga')
require('config.hop')
