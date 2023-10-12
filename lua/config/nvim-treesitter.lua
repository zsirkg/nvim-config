require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "cpp", "lua", "python", "vim", "bash", "json"},

  indent = {
    enable = false
  },

  highlight = {
    enable = true,
    disable = { "c", "cpp" },
    additional_vim_regex_highlighting = false
  }
}
