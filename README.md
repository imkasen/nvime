# My NeoVim Configuration with Lua

A simple neovim-related configuration for basic file editing.

## 安装

1. Install [NeoVim](https://github.com/neovim/neovim)

   ``` Bash
   curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
   chmod u+x nvim.appimage
   mv nvim.appimage /usr/local/bin/nvim
   ```

2. Install [nvime](https://github.com/imkasen/nvime)

   ``` Bash
   cd && git clone git@github.com:imkasen/nvime.git
   cd ~/.config/ && rm -rf ./nvim/
   ln -s ~/nvime ./nvim
   ```

## Plugins

* theme
  * [nightfox.nvim](https://github.com/EdenEast/nightfox.nvim)
* plugins
  * [packer.nvim](https://github.com/wbthomason/packer.nvim)

## 参考

* [Neovim 配置实战：从 0 到 1 打造自己的 IDE](https://github.com/nshen/learn-neovim-lua)
* [Neovim from scratch](https://github.com/LunarVim/Neovim-from-scratch)
