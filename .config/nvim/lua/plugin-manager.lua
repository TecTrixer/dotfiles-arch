local Plug = vim.fn['plug#']

vim.call('plug#begin')
-- Discord Presence
Plug 'andweeb/presence.nvim'

-- Deus Color Theme
Plug 'ajmwagar/vim-deus'

-- Powerline Bar Below Screen
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'powerline/powerline'

-- TreeSitter for Color highlighting
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

-- Nvim-Tree Fileexplorer
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'

-- Automatic Comment toggling
Plug 'terrortylor/nvim-comment'

-- Easy Motion like movement with hopping
Plug 'phaazon/hop.nvim'

-- Rust Setup
Plug 'rust-lang/rust.vim'

-- LSP + Completion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'

-- Snippet Engine (LuaSnip, snippet repo)
Plug 'L3MON4D3/LuaSnip'
-- Plug 'rafamadriz/friendly-snippets'
Plug 'saadparwaiz1/cmp_luasnip'

-- Tagbar for navigation in the current file
Plug 'preservim/tagbar'

-- Handling Git Stuff
Plug 'tpope/vim-fugitive'

-- Latex Stuff
Plug 'lervag/vimtex'

vim.call('plug#end')
