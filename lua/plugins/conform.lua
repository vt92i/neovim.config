return {
  "stevearc/conform.nvim",
  event = "BufWritePre",
  opts = {
    formatters_by_ft = {
      c = { "clang-format" },
      cpp = { "clang-format" },

      bash = { "shfmt" },
      sh = { "shfmt" },

      html = { "prettier" },
      css = { "prettier" },
      javascript = { "prettier" },
      javascriptreact = { "prettier" },
      typescript = { "prettier" },
      typescriptreact = { "prettier" },
      json = { "prettier" },

      lua = { "stylua" },

      terraform = { "terraform_fmt" },
    },

    format_after_save = {
      lsp_fallback = true,
    },
  },
}
