-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>d", function() Snacks.bufdelete() end, { desc = "Delete Buffer" })
vim.keymap.set("n", "<leader><space>", function() Snacks.picker.lines() end, { desc = "Find in Buffer" })
vim.keymap.set("n", "<leader><leader>", "<C-^>", { desc = "Switch to Last Buffer" })
vim.keymap.set("n", "n", "nzz", { desc = "Next Result (centered)" })
vim.keymap.set("n", "N", "Nzz", { desc = "Prev Result (centered)" })
