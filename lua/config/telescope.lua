require('telescope').setup {
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
  },
}
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
vim.keymap.set('n', 'fb', builtin.buffers, {})
vim.keymap.set('n', 'fh', builtin.help_tags, {})
