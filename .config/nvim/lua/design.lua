-- Set default colorscheme
vim.cmd('colorscheme deus')
vim.cmd('colors deus')

-- Configure Powerline Bar
vim.api.nvim_set_var('airline_powerline_fonts', 1)
vim.api.nvim_set_var('airline_theme', 'deus')

-- Better highlight color
vim.cmd('hi Search cterm=bold ctermfg=237 ctermbg=109 guibg=DarkGrey')
vim.cmd('hi MatchParen cterm=bold ctermfg=237 ctermbg=109 guibg=DarkGrey')

-- Weird fix, because I like these colors better
-- NOTE: NEEDS TO BE CALLED AFTER LSP!
vim.cmd('set notermguicolors')
