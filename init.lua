-- -- use Space as leader
vim.g.mapleader = " "

require "plugins.packer"

-- Setup globals
require "globals.remaps"
require "globals.options"

require "lsp.lsp"



vim.g.shell = "/usr/bin/zsh"


function save_view()
    vim.api.nvim_command('mkview')
end

vim.api.nvim_command('au BufWritePost * lua save_view()')

function load_view()
    vim.api.nvim_command('loadview')
end

vim.api.nvim_command('au BufReadPost * lua load_view()')
vim.cmd[[colorscheme tokyonight]]
