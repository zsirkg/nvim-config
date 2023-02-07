local treesitter = require('nvim-treesitter')

local function treelocation()
  return treesitter.statusline({
    indicator_size = 100,
    type_patterns = {'class', 'function', 'method'},
    separator = ' -> '
  })
end

require('lualine').setup {
  options = { theme = 'everforest' },
  sections = {
    lualine_c = {
      {require("lsp-progress").progress},
      {'filename', path = 1}
    }
  },
  -- winbar = {
  --   lualine_a = {{'filename'}, {treelocation}}
  -- }
}

-- listen to user event and trigger lualine refresh
-- vim.cmd([[
-- augroup lualine_refresh_augroup
--     autocmd!
--     autocmd User LspProgressStatusUpdated lua require("lualine").refresh()
-- augroup END
-- ]])
