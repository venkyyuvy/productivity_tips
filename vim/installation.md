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

