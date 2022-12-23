require('lualine').setup {
  options = { theme = 'everforest' },
  sections = {
    lualine_c = {'filename'}
  },
  winbar = {
    lualine_a = {{'filename'}}
  }
}
