local lsp_servers = {
  "pyright",
  "bashls",
  "jsonls",
  "lua_ls",
}

return {
  {
    "neovim/nvim-lspconfig", -- Configurations for Nvim LSP
    -- event = { "BufReadPost", "BufNewFile" },
    dependencies = {
      {
        "williamboman/mason.nvim", -- Manage language servers, linters, etc.
        -- IMPORTANT: Mason must be set up before lspconfig and null-ls
        priority = 500,
        config = function()
          -- Mason to manage external tools like language servers
          require("mason").setup()
          require("mason-lspconfig").setup({
            ensure_installed = lsp_servers,
            automatic_installation = true,
          })
        end,
      },
      {
        "williamboman/mason-lspconfig.nvim", -- Integration mason/lsp
      },
    },
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.pyright.setup{}
      -- lspconfig.ccls.setup{}
      lspconfig.bashls.setup{}
      lspconfig.jsonls.setup{}
      lspconfig.lua_ls.setup{}
      lspconfig.clangd.setup{
        on_init = function(client, _)
          client.server_capabilities.semanticTokensProvider = nil -- turn off semantic tokens
        end,
        -- on_attach = function(client, bufnr)
        --   require("nvim-navic").attach(client, bufnr)
        -- end
      }

      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('UserLspConfig', {}),
        callback = function(ev)
          vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
          local opts = { buffer = ev.buf }
          -- vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
          -- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
          -- vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<CR>', opts)
          vim.keymap.set('v', '<leader>f', function()
            vim.lsp.buf.format { async = true }
          end, opts)
        end,
      })

    end,
  }
}
