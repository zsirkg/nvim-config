local M = {
  -- "ishan9299/nvim-solarized-lua",
  -- config = function()
  --   vim.cmd.colorscheme "solarized"
  -- end,
  -- { "EdenEast/nightfox.nvim" }
  "svrana/neosolarized.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("neosolarized").setup({
      comment_italics = true,
      background_set = false,
    })
    vim.cmd.colorscheme("neosolarized")
  end,
  dependencies = {
    "tjdevries/colorbuddy.nvim",
  },
}

return M
