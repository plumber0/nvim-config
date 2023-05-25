local builtin = require('telescope.builtin')
--cargo install fd-find
vim.keymap.set('n', '<leader>pf', function() 
	builtin.find_files({ find_command = {'fd', '--type', 'f', '--hidden', '--no-ignore'} }) 
end, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>rg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>ps', function() 
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
