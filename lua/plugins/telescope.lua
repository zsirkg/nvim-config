-------------------------------------------------
-- name : telescope
-- url  : https://github.com/nvim-telescope/telescope.nvim
-------------------------------------------------

local M = {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('telescope').setup{
    defaults = {
      mappings = {
        i = {
          ["<esc>"] = "close",
          ["<C-h>"] = "which_key",
          ["<C-j>"] = "move_selection_next",
          ["<C-k>"] = "move_selection_previous",
          ["jk"] = { "<esc>", type = "command" },
        }
      },
      layout_strategy='vertical',
      layout_config = {
        preview_cutoff = 1, -- Preview should always show (unless previewer = false)
        vertical = { width = 0.8, height = 0.95 }
      },
    },
    pickers = {
      find_files = {
        previewer = false,
        layout_config = {
          vertical = { width = 0.6, height = 0.6 }
        },
      },
      buffers = {
        entry_maker = require"config.telescope_entry".gen_from_buffer_like_leaderf(),
        previewer = false,
        sort_mru = true,
        layout_config = {
          vertical = { width = 0.8, height = 0.8 }
        },
      }
    }
  }
  end,
}

return M
