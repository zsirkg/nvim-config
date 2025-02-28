-- use commit: 8bd402ad4f138af23948115dc380319069b79a01
return {
  'nvimdev/lspsaga.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter', -- optional
    'nvim-tree/nvim-web-devicons'     -- optional
  },
  config = function()
    require('lspsaga').setup({
      diagnostic = {
        show_code_action = true,
      },
      lightbulb = {
        enable = false,
      },
      symbol_in_winbar = {
        enable = true,
        folder_level = 0,
      },
      finder = {
        -- layout = 'normal'
        left_width = 0.3,
      },
    })
    local keymap = vim.keymap.set
    keymap("n", "gr", "<cmd>Lspsaga finder<CR>")
    keymap("n", "gd", "<cmd>Lspsaga goto_definition<CR>")
    keymap("n", "gk", "<cmd>Lspsaga peek_definition<CR>")
    keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
    keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>")
    keymap("n","go", "<cmd>Lspsaga outline<CR>")
    keymap('n', 'K', '<cmd>Lspsaga hover_doc<CR>')
  end,
}
