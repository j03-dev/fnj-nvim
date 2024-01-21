vim.g.mapleader = " "
vim.keymap.set("n", ",", vim.cmd.noh)
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", ",", vim.cmd.noh)
vim.keymap.set("n", "B", ":!rbuild % | bash  <CR>")
vim.keymap.set("n", "<C-o>", ":e ~/.config/nvim <CR>")
vim.keymap.set("n", "<A-n>", vim.cmd.tabnew)
vim.keymap.set("n", "<A-h>", vim.cmd.tabprevious)
vim.keymap.set("n", "<A-l>", vim.cmd.tabnext)
vim.keymap.set("n", "<A-x>", vim.cmd.exit)

--  Goto mode
vim.keymap.set("n", "gh", function()
    vim.api.nvim_feedkeys('0', 'n', true)
end)

vim.keymap.set("n", "gl", function()
    vim.api.nvim_feedkeys('$', 'n', true)
end)

vim.keymap.set("n", "ge", function()
    vim.api.nvim_feedkeys('G', 'n', true)
end)

vim.keymap.set("n", "ga", ':b#' .. "<CR>")


vim.keymap.set("v", "gh", function()
    vim.api.nvim_feedkeys('0', 'n', true)
end)

vim.keymap.set("v", "gl", function()
    vim.api.nvim_feedkeys('$', 'n', true)
end)

vim.keymap.set("v", "ge", function()
    vim.api.nvim_feedkeys('G', 'n', true)
end)

vim.keymap.set("v", "ga", ':b#' .. "<CR>")
