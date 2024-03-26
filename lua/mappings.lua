require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local opts = { nowait = true, silent = true }
map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")
--debug
map("n", "<F5>", ":lua require'dap'.continue()<CR>", { desc = "DAP continue" })
map("n", "<F10>", ":lua require'dap'.step_over()<CR>", { desc = "DAP step_over" })
map("n", "<F11>", ":lua require'dap'.step_into()<CR>", { desc = "step_into" })
map("n", "<F12>", ":lua require'dap'.step_out()<CR>", { desc = "step_out" })
map("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>", { desc = "toggle_breakpoint" })
-- map("n", "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition()<CR>")
map("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>", { desc = "repl open" })
map("n", "<leader>dt", ":lua require'dap-go'.debug_test()<CR>", { desc = "debug_test" })
map("n", "<leader>do", ":lua require'dapui'.open()<CR>", { desc = "DAP open" })
map("n", "<leader>dc", ":lua require'dapui'.close()<CR>", { desc = "DAP open" })
map("n", "<leader>w", "<cmd>:w!<CR>", opts, { desc = "save file" })
map("n", "<leader>q", "<cmd>:q<CR>", opts, { desc = "quit file" })

--trouble
vim.keymap.set("n", "<leader>xx", function()
  require("trouble").toggle()
end)
vim.keymap.set("n", "<leader>xw", function()
  require("trouble").toggle "workspace_diagnostics"
end)
vim.keymap.set("n", "<leader>xd", function()
  require("trouble").toggle "document_diagnostics"
end)
vim.keymap.set("n", "<leader>xq", function()
  require("trouble").toggle "quickfix"
end)
vim.keymap.set("n", "<leader>xl", function()
  require("trouble").toggle "loclist"
end)
vim.keymap.set("n", "gR", function()
  require("trouble").toggle "lsp_references"
end)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
