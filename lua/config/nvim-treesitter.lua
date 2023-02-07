require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "cpp", "lua", "python", "vim", "bash", "json"},

  indent = {
    enable = false
  },

  highlight = {
    enable = true,
    disable = { "c", "cpp" },
    additional_vim_regex_highlighting = false
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  }
}
-- for folding
-- vim.wo.foldmethod = 'expr'
-- vim.wo.foldexpr= 'nvim_treesitter#foldexpr()'
-- vim.wo.foldlevel = 9999
-- vim.wo.foldenable=false
-- vim.api.nvim_create_autocmd({ "BufEnter" }, {
--    pattern = { "*" },
--    command = "normal zx",
-- })
