return {
  {'bfrg/vim-cpp-modern',},
  {'mg979/vim-visual-multi'},
  {'tpope/vim-fugitive'},
  {'sindrets/diffview.nvim'},
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('alpha').setup(require'alpha.themes.startify'.config)
    end,
  },
  {
    'akinsho/git-conflict.nvim',
    config = function()
      require('git-conflict').setup()
    end,
  },
  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end,
  },
  {
    'TheBlob42/houdini.nvim',
    config = function()
      require('houdini').setup()
    end
  },
  -- {
  --   "sphamba/smear-cursor.nvim",
  --   opts = {},
  -- },
  {
    'hat0uma/csvview.nvim',
    config = function()
      require('csvview').setup()
    end
  }
}
