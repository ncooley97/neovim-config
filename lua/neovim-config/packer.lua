-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- the best theme
    use 'https://gitlab.com/__tpb/monokai-pro.nvim'

    use ('nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        },
        -- wrap LSP comments
        use({
            "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
            config = function()
                require("lsp_lines").setup()
            end,
        }),
        --lol
        use {'github/copilot.vim', branch = 'release'},
        -- java lsp
        use {'mfussenegger/nvim-jdtls'},
        -- this one is for you, prime
        use {'ThePrimeagen/harpoon'},
        use {'tpope/vim-fugitive'},
        use {'lewis6991/gitsigns.nvim'}
    }
end)
