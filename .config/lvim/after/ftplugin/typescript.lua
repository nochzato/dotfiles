local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { name = "prettierd" },
  { name = "eslint_d" },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { name = "eslint_d" },
}
