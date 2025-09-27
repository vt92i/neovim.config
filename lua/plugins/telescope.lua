return {
  "nvim-telescope/telescope.nvim",
  lazy = false,
  opts = function()
    vim.keymap.set("n", "<leader>tg", "<cmd>Telescope live_grep<cr>", { desc = "telescope live grep" })
    vim.keymap.set("n", "<leader>tb", "<cmd>Telescope buffers<cr>", { desc = "telescope find buffers" })
    vim.keymap.set(
      "n",
      "<leader>tz",
      "<cmd>Telescope current_buffer_fuzzy_find<cr>",
      { desc = "telescope find in current buffer" }
    )
    vim.keymap.set("n", "<leader>tm", "<cmd>Telescope marks<cr>", { desc = "telescope find marks" })
    vim.keymap.set("n", "<leader>tr", "<cmd>Telescope registers<cr>", { desc = "telescope find registers" })
    vim.keymap.set("n", "<leader>to", "<cmd>Telescope oldfiles<cr>", { desc = "telescope find oldfiles" })
    vim.keymap.set("n", "<leader>th", "<cmd>Telescope help_tags<cr>", { desc = "telescope help page" })
    vim.keymap.set("n", "<leader>tf", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
    vim.keymap.set(
      "n",
      "<leader>ta",
      "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<cr>",
      { desc = "telescope find all files" }
    )

    return {
      defaults = {
        prompt_prefix = "   ",
        selection_caret = " ",
        entry_prefix = " ",
        sorting_strategy = "ascending",
        layout_config = {
          horizontal = {
            prompt_position = "top",
            preview_width = 0.55,
          },
          width = 0.87,
          height = 0.80,
        },
        mappings = {
          n = { ["q"] = require("telescope.actions").close },
        },
      },
    }
  end,
}
