-------------------------------------------------
-- name : nvim-tree
-- url  : https://github.com/nvim-tree/nvim-tree.lua
-------------------------------------------------
local M = {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  cmd = "NvimTreeToggle",
  config = function()
    vim.cmd([[
        let g:loaded_netrw = 1
        let g:loaded_netrwPlugin = 1
      ]])
    require('nvim-tree').setup({
      view = {
        adaptive_size = true,
      },
    })
  end,
}

return M
