local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('v', '<leader>f', function() vim.lsp.buf.format { async = true } end, bufopts)

  -- The blow command will highlight the current variable and its usages in the buffer.
  if client.server_capabilities.documentHighlightProvider then
    vim.cmd([[
      " hi! link LspReferenceRead Visual
      " hi! link LspReferenceText Visual
      " hi! link LspReferenceWrite Visual
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]])
  end
end

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
      lspconfig.ccls.setup{}
      lspconfig.bashls.setup{}
      lspconfig.jsonls.setup{}
      lspconfig.lua_ls.setup{}

      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('UserLspConfig', {}),
        callback = function(ev)
          -- Enable completion triggered by <c-x><c-o>
          vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

          -- Buffer local mappings.
          -- See `:help vim.lsp.*` for documentation on any of the below functions
          local opts = { buffer = ev.buf }
          vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
          -- vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
          -- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
          -- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
          -- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
          -- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
          -- vim.keymap.set('n', '<space>wl', function()
          --   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
          -- end, opts)
          -- vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
          -- vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
          -- vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
          -- vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
          vim.keymap.set('v', '<leader>f', function()
            vim.lsp.buf.format { async = true }
          end, opts)
        end,
      })

      -- require('lspconfig')['pyright'].setup{
      --   on_attach = on_attach,
      -- }
      -- require('lspconfig')['ccls'].setup{
      --   on_attach = on_attach,
      -- }
      -- require('lspconfig')['bashls'].setup{
      --   on_attach = on_attach,
      -- }
      -- require('lspconfig')['jsonls'].setup{
      --   on_attach = on_attach,
      -- }
      -- require('lspconfig')['lua_ls'].setup{
      --   settings = {
      --     Lua = {
      --       runtime = {
      --         -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
      --         version = 'LuaJIT',
      --       },
      --       diagnostics = {
      --         -- Get the language server to recognize the `vim` global
      --         globals = {'vim'},
      --       },
      --       workspace = {
      --         -- Make the server aware of Neovim runtime files
      --         library = vim.api.nvim_get_runtime_file("", true),
      --       },
      --       -- Do not send telemetry data containing a randomized but unique identifier
      --       telemetry = {
      --         enable = false,
      --       },
      --     },
      --   },
        -- on_attach = on_attach,
      -- }
    end,
  }
}
