options = { noremap = true }

vim.g.tmux_navigator_no_mappings = 1

-- Change panes on vim ctrl mappings
vim.api.nvim_set_keymap('n', '<C-h>', ':<C-U>TmuxNavigateLeft<CR>', { noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<C-j>', ':<C-U>TmuxNavigateDown<CR>', { noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<C-k>', ':<C-U>TmuxNavigateUp<CR>', { noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<C-l>', ':<C-U>TmuxNavigateRight<CR>', { noremap=true, silent=true})

-- list buffers
vim.api.nvim_set_keymap('n', '<Leader>b', ':ls<CR>:b<Space>', options)
 
-- go through buffers with Tab
vim.api.nvim_set_keymap('n', '<Tab>', ':bnext<CR>', {})
vim.api.nvim_set_keymap('n', '<S-Tab>', ':bprevious<CR>', {})

--resize windows with C- arrow keys
vim.api.nvim_set_keymap('n', '<C-Right>', ':vertical resize +3<CR>', options)
vim.api.nvim_set_keymap('n', '<C-Left>', ':vertical resize -3<CR>', options)
vim.api.nvim_set_keymap('n', '<C-Up>', ':horizontal resize +3<CR>', options)
vim.api.nvim_set_keymap('n', '<C-Down>', ':horizontal resize -3<CR>', options)

--tags
-- vim.api.nvim_set_keymap('n', '<F8>', ':TagbarToggle<CR>', options)

--copy to clipboard
vim.api.nvim_set_keymap('n', '<Leader>y', '"+y', options) --yank normal
vim.api.nvim_set_keymap('v', '<Leader>Y', '"+yg_', options)  --yank visual

--sniprun
vim.api.nvim_set_keymap('n', '<leader>s',  '<Plug>SnipRunOperator',  {silent=true})
vim.api.nvim_set_keymap('n', '<leader>ss', '<Plug>SnipRun', {silent=true})

--buffers
vim.api.nvim_set_keymap('n', '<left>',  ':bp<CR> :redraw!<CR>', {silent=true})
vim.api.nvim_set_keymap('n', '<right>',  ':bn<CR> :redraw!<CR>', {silent=true})

--hide everything
vim.api.nvim_set_keymap('n', '<F5>', ':set relativenumber! number! showmode! showcmd! hidden! ruler!<CR>',options)

--telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

--Goyo
vim.api.nvim_set_keymap('n', '<F9>', ':Goyo<CR>', {})
vim.api.nvim_set_keymap('n', '<F10>', ':set ft=python<CR>', {})

--tree
vim.api.nvim_set_keymap('n', '<C-n>', ":NvimTreeToggle<CR>", { noremap=true, silent=true})
