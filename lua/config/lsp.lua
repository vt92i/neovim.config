local M = {}

function M.init()
  vim.lsp.config(
    "*",
    (function()
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities.textDocument.completion.completionItem = {
        documentationFormat = { "markdown", "plaintext" },
        snippetSupport = true,
        preselectSupport = true,
        insertReplaceSupport = true,
        labelDetailsSupport = true,
        deprecatedSupport = true,
        commitCharactersSupport = true,
        tagSupport = { valueSet = { 1 } },
        resolveSupport = {
          properties = { "documentation", "detail", "additionalTextEdits" },
        },
      }

      return {
        capabilities = capabilities,
      }
    end)()
  )

  vim.lsp.enable(vim.tbl_map(function(f)
    return vim.fn.fnamemodify(f, ":t:r")
  end, vim.fn.globpath(vim.fn.stdpath "config" .. "/lsp", "*.lua", false, true)))
end

return M
