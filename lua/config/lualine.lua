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
    lualine_c = {{'filename', path = 1}}
  },
  winbar = {
    lualine_a = {{'filename'}, {treelocation}}
  }
}
