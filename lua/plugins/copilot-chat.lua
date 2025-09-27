return {
  "CopilotC-Nvim/CopilotChat.nvim",
  build = "make tiktoken",
  dependencies = {
    { "nvim-lua/plenary.nvim", branch = "master" },
  },
  event = "BufReadPost",
  opts = {
    highlight_headers = false,
  },
}
