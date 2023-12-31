local null_ls = require "null-ls"
local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local opts = {
  sources = {
    -- Javascript
    formatting.prettierd,
    lint.eslint_d,
    -- Lua
    formatting.stylua,
    -- Go
    formatting.gofumpt,
    formatting.goimports_reviser,
    formatting.golines,
    lint.golangci_lint,
    -- Ruby
    formatting.rubocop,
    lint.rubocop,
  },
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds {
        group = augroup,
        buffer = bufnr,
      }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format { bufnr = bufnr }
        end,
      })
    end
  end,
}

return opts
