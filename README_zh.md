# My Self Use Dotfiles

个人用的点配置文件。因为我用的 Colemak 键盘布局，所以里面有些快捷键对 Colemak 用户会比较友好。Qwerty 用户可以自行更改。

## 需要用到的包/程序

我自己用到的一些功能是需要通过另外一些包/程序来实现的。如果你使用我的配置并且想体验完整的功能，那么你也要安装这些包/程序。否则你在使用的过程中可能会出现一些错误或者一些功能没有效果。

需要用到的包/程序在这里：[self-use-packages.md](https://github.com/justrico/dotfiles/blob/master/self-use-packages.md)

## git

使用了 [`diff-so-fancy`](https://github.com/so-fancy/diff-so-fancy)

## pypi

pip 设置了全局清华镜像源。

## ranger

通过 `ueberzug` 在 ranger 预览图片。

ranger 里已经包含了 [alexanderjeurissen/ranger_devicons](https://github.com/alexanderjeurissen/ranger_devicons) 插件。（插件版本为其作者最后一次提交时间是 2020年 1 月 8 日）

## tmux

安装完 tmux 之后，运行 `tmux -f /存放/tmux.conf/的路径` 来设置其配置文件路径。（tmux 默认配置文件是在家目录的隐藏文件 `~/.tmux.conf`）

**[Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) 需要单独手动安装。**

## zsh

### 使用之前

在 `$HOME/.xprofile` 中写入：

```shell
export XDG_CONFIG_HOME=$HOME/.config
export ZDOTDIR=$HOME/.config/zsh
export ZIM_HOME=$ZDOTDIR/.zim
```

请确保已经安装了 `zsh` 并且版本在 `5.2` 以上，这是使用 [Zim](https://github.com/zimfw/zimfw) 框架必需的条件。

你可以在 **安装之前** 往 `zimrc` 文件里添加你自己想要的模块，在 `plugins.zsh` 文件里配置模块。

如果你只想用我 zsh 的配置，直接在 zsh 目录里运行 `./install.zsh` 即可。
