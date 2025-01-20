return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup{
      ensure_installed = { "c", "cpp", "lua", "python", "vim", "bash", "json", "markdown", "markdown_inline"},
      indent = { enable = false},
      highlight = {
        enable = true,
        disable = { "c", "cpp" },
        additional_vim_regex_highlighting = false
      }
    }
  end,
}
