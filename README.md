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

## Usage

```bash
git clone https://ghproxy.com/https://github.com/chengzhycn/nvim_config.git ~/.config/nvim/
