local options = {
  formatters_by_ft = {
    lua = { "stylua" },
     css = { "prettier" },
     html = { "prettier" },
     javascript = { "prettier" },
     javascriptreact = { "prettier" },
     vue = { "prettier" },
     php = { "pint" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

require("conform").setup(options)
