local harpoon = require("harpoon")
harpoon:setup()

require("which-key").add({
  { "<leader>h", group = "Harpoon" },
})

vim.keymap.set("n", "<leader>ha", function()
  harpoon:list():add()
end, { desc = "add file" })
vim.keymap.set("n", "<leader>hh", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "toggle quick menu" })

vim.keymap.set("n", "<leader>h1", function()
  harpoon:list():select(1)
end, { desc = "file 1" })
vim.keymap.set("n", "<leader>h2", function()
  harpoon:list():select(2)
end, { desc = "file 2" })
vim.keymap.set("n", "<leader>h3", function()
  harpoon:list():select(3)
end, { desc = "file 3" })
vim.keymap.set("n", "<leader>h4", function()
  harpoon:list():select(4)
end, { desc = "file 4" })

vim.keymap.set("n", "<leader>hc", function()
  harpoon:list():clear()
end, { desc = "Harpoon: clear quick menu" })
