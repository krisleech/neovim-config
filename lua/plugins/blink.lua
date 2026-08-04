return {
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        list = {
          selection = {
            -- Don't auto-select the first item, so <CR> only accepts a
            -- completion when you've actually chosen one (e.g. via <Tab>
            -- or <C-n>). Otherwise <CR> always accepts the first
            -- suggestion, even at the end of a line where you just want
            -- a newline.
            preselect = false,
          },
        },
      },
      keymap = {
        -- Tab/S-Tab move the selection through the menu (without
        -- accepting); <CR> then accepts whatever is highlighted, or
        -- falls back to a normal newline if nothing is selected.
        ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
        ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
      },
    },
  },
}
