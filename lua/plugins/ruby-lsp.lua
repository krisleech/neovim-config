return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- installed per-Ruby with `gem install`, so it runs under the project's
        -- Ruby and can build its composed bundle
        ruby_lsp = { mason = false },
        -- ruby-lsp already surfaces RuboCop diagnostics from the project's own
        -- bundle; a second server would duplicate them at the wrong version
        rubocop = { enabled = false },
      },
    },
  },
}
