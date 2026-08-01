-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Custom normal remap
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = false })

-- Integrated terminal WD override
vim.keymap.set("n", "<C-/>", function()
  Snacks.terminal(nil, { cwd = vim.fn.getcwd() })
end, { desc = "Terminal (fixed cwd)" })

-- Shift enter makes new line below in normal
vim.keymap.set("n", "<CR>", "o<Esc>", { noremap = true })

-- Open terminal in CWD
vim.keymap.set("n", "<leader>ot", function()
  vim.fn.jobstart({ "xdg-terminal-exec" }, { cwd = vim.fn.getcwd(), detach = true })
end, { desc = "Open terminal in CWD" })

-- Replace usages of identifier
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {
  desc = "LSP Rename variable",
})
