
# Neovim

```
brew install neovim
```
or follow the [documentation](https://github.com/neovim/neovim/wiki/Installing-Neovim)

## configuration
- [YouTube](https://www.youtube.com/watch?v=stqUbv-5u2s)
- [GitHub](https://github.com/nvim-lua/kickstart.nvim/tree/master); copy the `init.lua`

## Install the servers for python

- run `Mason` command in neovim
- install the linter, formatting, debugger and language server using `C-i`.
- `C-u` for updating the package
## Markdown preview

- [GitHub](https://github.com/iamcco/markdown-preview.nvim)
- Install node and yarn

```
brew install node
brew install yarn
```
- add the following lines in the `init.lua` file.
```
-- install with yarn or npm
{
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,
  ft = { "markdown" },
},
```

# classical vim 
## Getting the right version of vim

[ref](https://askubuntu.com/a/886308/608961)

```
sudo apt update
sudo apt install vim
```

## Installing plugins manager

we will use the VIM plug for managing our plugins.

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Now, we are all set, you can copy the `.vimrc` file to your home dir `/home/<user_name>`.

Open the `vimrc` file and then run `PlugInstall` in command mode of vim. This install all the plug-ins.

Now restart the vim and start enjoying!!!

