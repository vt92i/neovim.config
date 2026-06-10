vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
  command = "checktime",
})

vim.api.nvim_create_autocmd("BufReadPost", {
  callback = function()
    local row, col = unpack(vim.api.nvim_buf_get_mark(0, '"'))
    if row > 0 and row <= vim.api.nvim_buf_line_count(0) then
      vim.api.nvim_win_set_cursor(0, { row, col })
    end
  end,
})

vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.hl.on_yank { higroup = "IncSearch", timeout = 200 }
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function()
    local dir = vim.fn.expand "<afile>:p:h"
    if vim.fn.isdirectory(dir) == 0 then
      vim.fn.mkdir(dir, "p")
    end
  end,
})

vim.api.nvim_create_autocmd("TextChangedI", {
  group = vim.api.nvim_create_augroup("LspAutoSignatureHelp", { clear = true }),
  callback = function(args)
    local clients = vim.lsp.get_clients { bufnr = args.buf, method = "textDocument/signatureHelp" }
    if #clients == 0 then
      return
    end

    local cursor = vim.api.nvim_win_get_cursor(0)
    local line = vim.api.nvim_get_current_line()
    local col = cursor[2]

    if col == 0 then
      return
    end
    local char_before_cursor = string.sub(line, col, col)

    if char_before_cursor == "(" or char_before_cursor == "," then
      pcall(vim.lsp.buf.signature_help)
    end
  end,
})
