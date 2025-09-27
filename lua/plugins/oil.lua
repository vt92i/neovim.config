return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
  opts = function()
    vim.keymap.set("n", "<leader>e", function()
      require("oil").open_float()
    end, { desc = "oil focus" })
    return {
      view_options = { show_hidden = true },
      keymaps = {
        ["<C-x>"] = { require("oil").save, mode = "n", desc = "Save all changes" },
      },
    }
  end,
}
