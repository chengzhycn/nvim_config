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

    -- Statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Icon
    use 'kyazdani42/nvim-web-devicons'

    -- Treesitter interface
    use 'nvim-treesitter/nvim-treesitter'

    -- Color schemes
    use 'navarasu/onedark.nvim'

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)

return load_plugins()
