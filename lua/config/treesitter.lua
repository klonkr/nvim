require 'nvim-treesitter.install'.compilers = { "clang" }
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "gmn",
      scope_incremental = "gmc",
      node_decremental = "gmm",
    },
  },
  indent = {
    enable = true
  }
}
