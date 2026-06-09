return {
  "romus204/tree-sitter-manager.nvim",
  event = "VeryLazy",
  config = function()
    require("tree-sitter-manager").setup {
      ensure_installed = {
        "comment",
        "markdown",
        "markdown_inline",
        "regex",
        "vim",
        "vimdoc",

        "lua",
        "luadoc",

        "c",
        "cpp",
        "rust",
        "zig",

        "go",
        "gomod",

        "bash",
        "python",

        "html",
        "css",
        "javascript",
        "typescript",
        "jsx",
        "tsx",

        "json",
        "toml",
        "yaml",
      },
      auto_install = true,
      border = "rounded",
    }
  end,
}
