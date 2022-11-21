-- Toggling the Tagbar
vim.api.nvim_set_keymap('n', '<Leader>tb', ':TagbarToggle<CR>', {noremap = true})

-- avoiding accidentally misclicks when exiting vim
vim.api.nvim_set_keymap('n', 'q:<CR>', ':q<CR>', {noremap = true})

-- Git commands
vim.api.nvim_set_keymap('n', '<Leader>ga', ':G add.<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>gp', ':G push<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>gf', ':G fetch<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>gs', ':G status<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>gc', ':G commit -m "', {noremap = true})

-- Running programs (Makefiles, Rust programs, ...)
vim.api.nvim_create_autocmd('TermOpen', { pattern = '*', command = 'startinsert'})
vim.api.nvim_set_keymap('n', '<Leader>cc', ':w<CR>:bel 20sp | term make<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>ct', ':w<CR>:bel 20sp | term cargo test<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>cd', ':w<CR>:bel 20sp | term cargo run<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>cr', ':w<CR>:bel 20sp | term cargo run --release<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>cb', ':w<CR>:bel 20sp | term cargo build --release<CR>', {noremap = true})

-- Automatically close references window
vim.api.nvim_create_autocmd("FileType", {
    callback = function()
        local bufnr = vim.fn.bufnr('%')
        vim.keymap.set("n", "<CR>", function()
            vim.api.nvim_command([[execute "normal! \<cr>"]])
            vim.api.nvim_command(bufnr .. 'bd')
        end, { buffer = bufnr })
    end,
    pattern = "qf",
})
