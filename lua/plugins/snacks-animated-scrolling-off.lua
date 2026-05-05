return {
  "folke/snacks.nvim",
  opts = {
    scroll = {
      enabled = false,
    },
    picker = {
      win = {
        input = {
          keys = {
            ["<C-l>"] = { "focus_preview", mode = { "i", "n" } },
          },
        },
        list = {
          keys = {
            ["<C-l>"] = { "focus_preview", mode = { "n" } },
          },
        },
        preview = {
          keys = {
            ["<C-h>"] = { "focus_list", mode = { "n" } },
          },
        },
      },
    },
  },
}
