vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'bfrg/vim-cpp-modern',
    'ishan9299/nvim-solarized-lua',
    'kyazdani42/nvim-web-devicons',
    'nvim-lua/plenary.nvim'
  }

  use {
    'nvim-telescope/telescope.nvim',
    'nvim-tree/nvim-tree.lua',
    'mg979/vim-visual-multi',
    'voldikss/vim-floaterm'
  }

  use {
    'lewis6991/gitsigns.nvim',
    'sindrets/diffview.nvim',
    'numToStr/Comment.nvim',
    'vim-scripts/a.vim'
  }

  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig'
  }

  use {
    'onsails/lspkind-nvim',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip'
  }

  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use {'nvim-treesitter/nvim-treesitter-textobjects'}

  use {'nvim-lualine/lualine.nvim'}
  use {'akinsho/bufferline.nvim', tag = 'v3.*'}

  use {'glepnir/lspsaga.nvim', branch = 'main'}

end)
