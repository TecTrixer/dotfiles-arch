-- Mappings for jumping through snippet
-- vim.cmd([[
-- imap <silent><expr> <C-Right> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
-- smap <silent><expr> <C-Right> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

-- imap <silent><expr> <C-Left> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
-- smap <silent><expr> <C-Left> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
-- ]])
vim.api.nvim_set_keymap('i', '<Left>', '<Plug>luasnip-jump-prev', {noremap = false})
vim.api.nvim_set_keymap('i', '<Right>', '<Plug>luasnip-expand-or-jump', {noremap = false})
vim.api.nvim_set_keymap('s', '<Left>', '<Plug>luasnip-jump-prev', {noremap = false})
vim.api.nvim_set_keymap('s', '<Right>', '<Plug>luasnip-jump-next', {noremap = false})


require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})

require("luasnip").config.set_config({
  enable_autosnippets = true,
  store_selection_keys = "<Tab>",
})
