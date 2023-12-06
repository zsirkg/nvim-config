return {
  {
    "linrongbin16/lsp-progress.nvim",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('lsp-progress').setup()
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('lualine').setup {
        options = { theme = 'everforest' },
        sections = {
          lualine_c = {
            {require("lsp-progress").progress},
            {'filename', path = 1}
          }
        }
      }
    end,
  },
}

