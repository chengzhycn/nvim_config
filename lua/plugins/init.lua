-------------------------------------------------
-- Plugin manager configuration file
-------------------------------------------------

-- Plugin manager: packer.nvim
-- url: https://github.com/wbthomason/packer.nvim

-- For information about installed plugins see the README
--- neovim-lua/README.md
--- https://github.com/brainfucksec/neovim-lua#readme

-------------------------------------------------
-- Plugins config
-------------------------------------------------

local load_plugins = function()
    require("plugins.nvim-treesitter")
    require("plugins.lualine")
    require("plugins.nvim-tree")
    require("plugins.themes")
    require("plugins.nvim-lspconfig")
    require("plugins.nvim-cmp")
    require("plugins.gitsigns")
    require("plugins.leaderf")
    require("plugins.indent-blankline")
    require("plugins.alpha-nvim")
    require("plugins.vista")
end

-------------------------------------------------
-- Startup
-------------------------------------------------

local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
local remote_url = 'https://ghproxy.com/https://github.com/wbthomason/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system('git clone --depth 1 '..remote_url.." "..install_path)
end

vim.cmd [[packadd packer.nvim]]

require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- Collection of configurations for the built-in LSP client
    use 'neovim/nvim-lspconfig'

    -- Autocomplete
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'L3MON4D3/LuaSnip',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-buffer',
        },
    }

    -- Indent line
    use "lukas-reineke/indent-blankline.nvim"

    -- Statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Tag viewer
    use 'liuchengxu/vista.vim'

    -- Icon
    use 'kyazdani42/nvim-web-devicons'

    -- Git
    use 'lewis6991/gitsigns.nvim'

    -- File explorer
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        }
    }

    use 'Yggdroot/LeaderF'

    -- Treesitter interface
    use 'nvim-treesitter/nvim-treesitter'

    -- Autopair
    use {
        'windwp/nvim-autopairs',
        config = function()
            require('nvim-autopairs').setup()
        end
    }

    -- Startup interface
    use {
        'goolord/alpha-nvim',
        requires = { 'kyazdani42/nvim-web-devicons' },
    }

    -- Color schemes
    use 'navarasu/onedark.nvim'

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)

if not packer_bootstrap then
    return load_plugins()
end
