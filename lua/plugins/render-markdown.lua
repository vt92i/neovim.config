return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
  event = "BufReadPost",
  opts = function()
    return {
      completions = { lsp = { enabled = true } },
      file_types = { "markdown", "copilot-chat" },
      latex = { enabled = false },
    }
  end,
}
