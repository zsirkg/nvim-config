return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
      require('toggleterm').setup{
           open_mapping = [[<c-\>]],
           direction = 'float',
      }
      vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-n>]], {noremap = true})
    end,
  },
}
