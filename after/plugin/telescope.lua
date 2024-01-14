local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.buffers, {})
vim.keymap.set('n', '<leader>s', builtin.grep_string, {})
vim.keymap.set('n', '<leader>S', function()
	builtin.grep_string({ search = vim.fn.inut("Grep > ") });
end)
vim.keymap.set('n', '<leader>t', ":Telescope<CR>")
