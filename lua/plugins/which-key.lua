return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  keys = {
    {
      "<leader>wK",
      function()
        require("which-key").show { global = true }
      end,
      desc = "whichkey all keymaps",
    },
  },
}
