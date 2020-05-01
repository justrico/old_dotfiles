[中文文档](https://github.com/justrico/dotfiles/blob/master/README_zh.md)


# My Self Use Dotfiles

These are just some configurations that I use. Some shutcuts more friendly to colemak users.

## Required packages

I use some packages to get more convenient and cool experience. If you want use my configurations, you're supposed to install them. Otherwise, some errors may occur during your use, or may not work.

See [self-use-packages.md](https://github.com/justrico/dotfiles/blob/master/self-use-packages.md) to get more details.

## git

Using [`diff-so-fancy`](https://github.com/so-fancy/diff-so-fancy).

## pypi

Set global Tsinghua mirror.

## ranger

Use `ueberzug` to preview images.

Include [alexanderjeurissen/ranger_devicons](https://github.com/alexanderjeurissen/ranger_devicons) plugin. (At latest commit on Jan 8,2020, may [check for update](https://github.com/alexanderjeurissen/ranger_devicons)).

## tmux

After install tmux, run `tmux -f /path/to/tmux.conf` to set the tmux configuration file location.

**[Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) should be installed manually.**

## zsh

### Before use

```shell
vi $HOME/.xprofile
------------------
export XDG_CONFIG_HOME=$HOME/.config
export ZDOTDIR=$HOME/.config/zsh
export ZIM_HOME=$ZDOTDIR/.zim
```

**Be sure that you have installed zsh and version >= 5.2. (This is necessary for [Zim](https://github.com/zimfw/zimfw) framework.)**

You can add modules in `zimrc` file **before install**, and configurate modules in `plugins.zsh` file.

If you only wanna use my zsh configurations, just go to zsh directory and run `./install.zsh` and waiting a moment and enjoy.

