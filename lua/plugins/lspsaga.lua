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
      symbol_in_winbar = {
        enable = true,
        separator = " ",
        hide_keyword = true,
        show_file = true,
        folder_level = 1,
        respect_root = false,
        color_mode = true,
      },
    })
    local keymap = vim.keymap.set
    keymap("n", "gr", "<cmd>Lspsaga lsp_finder<CR>")
    keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
    keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>")
    -- vim.keymap.set("n", "gr", "<cmd>Lspsaga finder<CR>", { silent = true })
    -- vim.keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })
    -- vim.keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })
  end,
}
