return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'onsails/lspkind-nvim',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip'
  },
  config = function()
    vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
    local cmp = require("cmp")
    local lspkind = require("lspkind")
    cmp.setup {
      snippet = {
        expand = function(args)
          -- For `ultisnips` user.
          vim.fn["UltiSnips#Anon"](args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert {
        ["<Tab>"] = function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          else
            fallback()
          end
        end,
        ["<S-Tab>"] = function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          else
            fallback()
          end
        end,
        ["<CR>"] = cmp.mapping.confirm { select = true },
        ["<C-e>"] = cmp.mapping.abort(),
        -- ["<Esc>"] = cmp.mapping.close(),
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
      },
      sources = {
        { name = "nvim_lsp" }, -- For nvim-lsp
        { name = "ultisnips" }, -- For ultisnips user.
        { name = "path" }, -- for path completion
        { name = "buffer", keyword_length = 2 }, -- for buffer word completion
        { name = "omni" },
        { name = "emoji", insert = true }, -- emoji completion
      },
      completion = {
        keyword_length = 1,
        completeopt = "menu,noselect",
      },
      view = {
        entries = "custom",
      },
      formatting = {
        format = lspkind.cmp_format {
          mode = "symbol_text",
          menu = {
            nvim_lsp = "[LSP]",
            ultisnips = "[US]",
            nvim_lua = "[Lua]",
            path = "[Path]",
            buffer = "[Buffer]",
            emoji = "[Emoji]",
            omni = "[Omni]",
          },
        },
      },
    }
  end,
}

