# neovim_config
## Prerequisites
* [neovim](https://github.com/neovim/neovim/releases) >= v0.6.1
* [nerd-fonts](https://github.com/ryanoasis/nerd-fonts) - for icons
* [ripgrep](https://github.com/BurntSushi/ripgrep) = for `Leaderf rg`

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
curl -L https://ghproxy.com/https://github.com/LuaLS/lua-language-server/releases/download/2.6.7/lua-language-server-2.6.7-linux-x64.tar.gz | tar -xz -C ~/.local/lua-language-server
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

* [LeaderF](https://github.com/Yggdroot/LeaderF) - An efficient fuzzy finder that helps to locate files, buffers, mrus, gtags, etc.

* [alpha-nvim](https://github.com/goolord/alpha-nvim) - A fast and fully customizable greeter for neovim

* [vista.vim](https://github.com/liuchengxu/vista.vim) - View and search LSP symbols, tags in Vim/NeoVim

* [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) - A neovim lua plugin to help easily manage multiple terminal windows

### Notice

2024.02.24 update:

* If nvim starts with errors below:

```
Error detected while processing BufReadPost Autocommands for ""
```

We can use command below to check how to fix it:

```
:checkhealth
```

It may need to update the lspconfig:

```
:TSUpdate {lang}
```

* https://github.com/neovim/neovim/issues/26515

---

* Leaderf requires python support(see [Leaderf#Requirements](https://github.com/Yggdroot/LeaderF#requirements)). We can check this by using command beblow in vim:

> ```
> :echo has("python3")
> :echo has("python")
> ```
>
> If results are 0, we can use command below to add these support for **neovim**:
>
>
> ```
> pip2 install --user --upgrade neovim
> pip3 install --user --upgrade neovim
>
> ```
>
> See [如何使用 Python 编写 vim 插件](https://www.v2ex.com/t/410079).
>
> TODO: auto install cextensions when initializing.
> ```
> :LeaderfInstallCExtension
> ```

```
 # if failed, used command below
 python3 -m pip install --user --upgrade pynvim
 python -m pip uninstall neovim pynvim
 python -m pip install --user --upgrade pynvim
```


* Copy the .clang-format file to the $HOME or root directory if you want to set IndentWidth to 4.

### Install plugins manually

```bash
git clone https://ghproxy.com/https://github.com/L3MON4D3/LuaSnip.git ~/.local/share/nvim/site/pack/packer/start/LuaSnip

nvim +PackerSync

# fish
for line in (cat ~/.config/nvim/plugin.list) ; git clone https://ghproxy.com/$line ~/.local/share/nvim/site/pack/packer/start/(string split -r -f2 -m1 / $line) ;end

# bash/zsh
for line in $(cat ~/.config/nvim/plugin.list); do git clone https://ghproxy.com/${line} ~/.local/share/nvim/site/pack/packer/start/${line##*/}; done
```

* Accelerate plugins updates:

```fish
# fish
p=~/.local/share/nvim/site/pack/packer/start/ for dir in (ls $p); sed -i 's#url = https://github.com#url = https://ghproxy.com/https://github.com#' $p$dir/.git/config; end

# bash && zsh
 p=~/.local/share/nvim/site/pack/packer/start/; for dir in $(ls $p); do sed -i 's#url = https://github.com#url = https://ghproxy.com/https://github.com#' $p$dir/.git/config; done
```

## Usage

```bash
git clone https://ghproxy.com/https://github.com/chengzhycn/nvim_config.git ~/.config/nvim/
```

## Reference

* https://github.com/brainfucksec/neovim-lua
* https://github.com/ayamir/nvimdots/tree/main
* https://github.com/LunarVim/LunarVim
