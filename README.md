# NeoVIM Configuration

* [Install NeoVIM](https://github.com/neovim/neovim/wiki/Installing-Neovim)
* [fzf](https://github.com/junegunn/fzf).
* [xclip](http://linux.die.net/man/1/xclip)

## Dependencies

### MacOS

```
brew install neovim/neovim/neovim
brew install fzf
```

### Linux (Debian)

```
sudo apt-get install xclip
```

## Clone the configuration

```
cd ~/.config
git clone git@github.com:krisleech/neovim-config.git nvim
```

Install the Plugins:

Start NeoVim, `nvim` and `:PlugInstall`.


## Misc

To update the plugin manager:

```
curl -fLo ~/.config/nvim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
