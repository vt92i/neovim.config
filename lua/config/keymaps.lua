local map = vim.keymap.set

-- ====================================
-- General
-- ====================================
map("n", "<Esc>", "<cmd>noh<cr>", { desc = "general clear highlights" })
map("n", "<C-s>", "<cmd>w<cr>", { desc = "general save file" })
map("n", "<C-c>", "<cmd>%y+<cr>", { desc = "general copy whole file" })
map("n", "<leader>qq", "<cmd>qa!<cr>", { desc = "general quit nvim" })

-- ====================================
-- Insert Mode Navigation
-- ====================================
map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

-- ====================================
-- Window Navigation
-- ====================================
map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

-- ====================================
-- Buffers
-- ====================================
map("n", "<leader>bn", "<cmd>enew<cr>", { desc = "buffer new" })
map("n", "<tab>", "<cmd>bn<cr>", { desc = "buffer next" })
map("n", "<S-tab>", "<cmd>bp<cr>", { desc = "buffer prev" })
map("n", "<leader>bd", "<cmd>bd<cr>", { desc = "buffer delete" })

-- ====================================
-- Comment
-- ====================================
map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })

-- ====================================
-- LSP
-- ====================================
map("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", { desc = "code action" })
map("n", "<leader>ld", "<cmd>lua vim.lsp.buf.definition()<cr>", { desc = "lsp go to definition" })
map("n", "<leader>lr", "<cmd>lua vim.lsp.buf.references()<cr>", { desc = "lsp show references" })
map("n", "<leader>lD", "<cmd>lua vim.lsp.buf.declaration()<cr>", { desc = "lsp go to declaration" })
map("n", "<leader>lt", "<cmd>lua vim.lsp.buf.type_definition()<cr>", { desc = "lsp go to type definition" })
map("n", "<leader>li", "<cmd>lua vim.lsp.buf.implementation()<cr>", { desc = "lsp go to implementation" })
map("n", "<leader>ls", "<cmd>lua vim.lsp.buf.signature_help()<cr>", { desc = "lsp show signature help" })
map("n", "<leader>lR", "<cmd>lua vim.lsp.buf.rename()<cr>", { desc = "lsp rename" })
map(
  "n",
  "<leader>lwl",
  "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>",
  { desc = "lsp list workspace folders" }
)
map("n", "<leader>lwa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>", { desc = "lsp add workspace folder" })
map("n", "<leader>lwr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>", { desc = "lsp remove workspace folder" })
