local M = {}

function M.init()
  vim.lsp.enable(vim.tbl_map(function(f)
    return vim.fn.fnamemodify(f, ":t:r")
  end, vim.fn.globpath(vim.fn.stdpath "config" .. "/lsp", "*.lua", false, true)))
end

return M
