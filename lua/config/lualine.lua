local treesitter = require('nvim-treesitter')

local function treelocation()
  return treesitter.statusline({
    indicator_size = 120,
    type_patterns = {'class', 'function', 'method'},
    separator = ' -> '
  })
end

require('lualine').setup {
  options = { theme = 'everforest' },
  sections = {
    lualine_c = {'filename'}
  },
  winbar = {
    lualine_a = {{'filename'}, {treelocation}}
  }
}
