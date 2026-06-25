return {
  {
    "Olical/conjure",
    init = function()
      vim.g["conjure#log#hud#enabled"] = false
      vim.g["conjure#log#botright"] = true

      vim.api.nvim_create_autocmd("BufEnter", {
        pattern = { "*.clj", "*.cljs", "*.cljc", "*.edn" },
        once = true,
        callback = function()
          vim.defer_fn(function()
            vim.cmd("ConjureLogSplit")
            vim.cmd("wincmd p")
          end, 500)
        end,
      })
    end,
  },
}
