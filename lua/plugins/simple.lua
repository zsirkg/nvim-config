return {
  {'bfrg/vim-cpp-modern',},
  {'mg979/vim-visual-multi'},
  {'tpope/vim-fugitive'},
  {'sindrets/diffview.nvim'},
  {'vim-scripts/a.vim'},
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
}
