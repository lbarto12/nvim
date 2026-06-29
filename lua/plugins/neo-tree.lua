return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      window = {
        mappings = {
          ["O"] = "system_open",
        },
      },
    },
    commands = {
      system_open = function(state)
        local path = state.tree:get_node():get_id()

        -- if mode is file, then move up to nearest directory
        if vim.fn.isdirectory(path) == 0 then
          path = vim.fn.fnamemodify(path, ":h")
        end

        vim.fn.jobstart({ "xdg-open", path }, { detach = true })
      end,
    },
  },
}
