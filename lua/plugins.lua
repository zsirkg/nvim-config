vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'ishan9299/nvim-solarized-lua'
  use 'octol/vim-cpp-enhanced-highlight'
  use 'dense-analysis/ale'
  use 'lewis6991/gitsigns.nvim'
  use 'numToStr/Comment.nvim'
  use 'mg979/vim-visual-multi'
  use 'vim-scripts/a.vim'
  use 'liuchengxu/vista.vim'
  use 'gelguy/wilder.nvim'
  use 'voldikss/vim-floaterm'

  use {'neoclide/coc.nvim', branch = 'release'}
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use {'nvim-treesitter/nvim-treesitter-textobjects'}
  use {'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim'}

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    'akinsho/bufferline.nvim', tag = "v2.*",
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use {
    'rmagatti/auto-session',
    config = function()
      require("auto-session").setup {
        log_level = "error",
        auto_session_suppress_dirs = {"~/"},
      }
    end
  }

end)
