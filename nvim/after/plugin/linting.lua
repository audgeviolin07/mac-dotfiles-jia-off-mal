-- Setup linting with nvim-lint
require('lint').linters_by_ft = {
  javascript = {'eslint'},
  javascriptreact = {'eslint'},
  typescript = {'eslint'},
  typescriptreact = {'eslint'},
  css = {'stylelint'},
  scss = {'stylelint'},
  html = {'htmlhint'},
  json = {'jsonlint'},
}

-- Auto-lint on save and when entering buffer
vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
  callback = function()
    require("lint").try_lint()
  end,
})

-- Setup formatting with conform.nvim
require("conform").setup({
  formatters_by_ft = {
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    html = { "prettier" },
    css = { "prettier" },
    scss = { "prettier" },
    json = { "prettier" },
    lua = { "stylua" },
    python = { "black" },
    go = { "gofmt" },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
})