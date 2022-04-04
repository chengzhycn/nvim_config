# neovim_config
## Prerequisites
* [neovim](https://github.com/neovim/neovim/releases) >= v0.6.1
* [nerd-fonts](https://github.com/ryanoasis/nerd-fonts) - for icons

### lspconfig

```
# Go
go install golang.org/x/tools/gopls@latest

# Bash
cnpm i -g bash-language-server

# Python
cnpm i -g pyright

# C/C++
sudo apt-get install clangd-12  # for ubuntu
brew install llvm               # for mac

# Rust
brew install rust-analyzer      # for mac

mkdir -p ~/.local/bin           # for linux
curl -L https://ghproxy.com/https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer
chmod +x ~/.local/bin/rust-analyzer

# Lua
brew install lua-language-server        # for mac

mkdir -p ~/.local/lua-language-server   # for linux
curl -L https://ghproxy.com/https://github.com/sumneko/lua-language-server/releases/download/2.6.7/lua-language-server-2.6.7-linux-x64.tar.gz | tar -xz -C ~/.local/lua-language-server
ln -s ~/.local/lua-language-server/bin/lua-language-server ~/.local/bin/lua-language-server
```

## Plugins

* [packer.nvim](https://github.com/wbthomason/packer.nvim) - A use-package inspired plugin manager for Neovim

* [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) - A blazing fast and easy to configure Neovim statusline written in Lua

* [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - A collection of common configurations for Neovim's built-in language server client

* [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Auto completion plugin

* [LuaSnip](https://github.com/L3MON4D3/LuaSnip) - Snippet Engine for Neovim written in Lua

* [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua) - A File Explorer written In Lua

* [indentBlankline](https://github.com/lukas-reineke/indent-blankline.nvim) - Adds indentation guides to all lines (including empty lines)

* [nvim-autopairs](https://github.com/windwp/nvim-autopairs) - A super powerful autopairs for Neovim

* [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Nvim Treesitter configurations and abstraction layer

* [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons) - A Lua fork of vim-devicons

* [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) - Super fast git decorations implemented purely in lua/teal

### Install plugins manually

```bash
git clone https://ghproxy.com/https://github.com/L3MON4D3/LuaSnip.git ~/.local/share/nvim/site/pack/packer/start/LuaSnip

nvim +PackerSync
```

## Usage

```bash
git clone https://ghproxy.com/https://github.com/chengzhycn/nvim_config.git ~/.config/nvim/
```

## Reference

* https://github.com/brainfucksec/neovim-lua
* https://github.com/ayamir/nvimdots/tree/main
* https://github.com/LunarVim/LunarVim
