
local telescope = require("telescope")

telescope.load_extension("workspaces")

telescope.setup({
  defaults = {
      layout_config = {
          vertical = { width = 0.99 }
      },
    mappings = {

    },
          layout_strategy = 'vertical',
  },
})
