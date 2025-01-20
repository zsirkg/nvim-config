return {
  'sakhnik/nvim-gdb',
  config = function()
      vim.keymap.set('n', '<Space>', ':GdbBreakpointToggle<CR>', {silent = true})
      vim.api.nvim_set_keymap('n', '<leader>gg', ':GdbStart gdb -q ', { noremap = true })
  end,
}

