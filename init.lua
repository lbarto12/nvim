-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local arg = vim.fn.argv(0)
    if type(arg) == "string" and arg ~= "" and vim.fn.isdirectory(arg) == 1 then
      vim.cmd.cd(arg)
    end
  end,
})

vim.api.nvim_create_autocmd("BufReadCmd", {
  pattern = { "*.png", "*.jpg", "*.jpeg", "*.gif" },
  callback = function()
    local file = vim.fn.expand("<afile>")
    vim.fn.jobstart({ "xdg-open", file }) -- Use 'open' for macOS or 'start' for Windows
    vim.cmd("bwipeout")
  end,
})

vim.filetype.add({
  extension = { tpp = "cpp" },
})
