vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use 'm4xshen/autoclose.nvim'

    use({ 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } })

    use { 'neoclide/coc.nvim', tag = 'release' }

    use 'ryanoasis/vim-devicons'
    use 'tpope/vim-fugitive'

    -- colorscheme
    use 'morhetz/gruvbox'
    use 'EdenEast/nightfox.nvim'
    use 'savq/melange-nvim'

    -- status line
    use "b0o/incline.nvim"
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use {
        'VonHeikemen/fine-cmdline.nvim',
        requires = {
            { 'MunifTanjim/nui.nvim' }
        }
    }
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }
end)
