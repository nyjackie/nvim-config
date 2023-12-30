local M = {}

M.mason = {
  ensure_installed = {
    "typescript-language-server",
    "tailwindcss-language-server",
    "eslint-lsp",
    "eslint_d",
    "css-lsp",
    "html-lsp",
    "lua-language-server",
    "stylua",
    "prettierd",
    "gopls",
    "gofumpt",
    "golines",
    "goimports-reviser",
    "golangci-lint",
  },
}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "bash",
    "json",
    "json5",
    "yaml",
    "dockerfile",
    "regex",
    "toml",
    "sql",
    "ruby",

    -- Markdown
    "markdown",
    "markdown_inline",
    -- Go Lang
    "go",
    "gomod",
    "gowork",
    "gosum",

    -- Web Dev
    "javascript",
    "typescript",
    "tsx",
    "html",
    "css",
  },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
