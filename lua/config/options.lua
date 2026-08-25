-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.mapleader = ","
vim.g.maplocalleader = ","
vim.opt.relativenumber = true
-- LazyVim ignores conform's own format_on_save/format_after_save opts and
-- controls autoformat-on-save via this global instead
vim.g.autoformat = false
-- keep cursor vertically centred for all motions
vim.opt.scrolloff = 999
