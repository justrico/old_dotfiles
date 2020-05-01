# My Personal Use Packages

## Packages

#### [bat](https://github.com/sharkdp/bat)

A cat(1) clone with wings. Support syntax highlighting, git integration, line number...


#### [clangd](https://github.com/autozimu/LanguageClient-neovim/wiki/Clangd)

Clangd is an implementation of the Language Server Protocol leveraging Clang. Clangd’s goal is to provide language “smartness” features like code completion, find references, etc. for clients such as C/C++ Editors.

For Arch Linux you can just install Clang package which comes with `clang-tools-extra`.

> Used by [coc-clangd](https://github.com/clangd/coc-clangd).


#### [ctags](https://github.com/universal-ctags/ctags)

> Used by vim plugin [vesta.vim](https://github.com/liuchengxu/vista.vim).


#### [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy)

Good-lookin' diffs. Actually… nah… The best-lookin' diffs. 

> Use `diff-so-fancy` for all diff output.


#### [delve](https://github.com/go-delve/delve)

Delve is a debugger for the Go programming language.

> This also be requires for install [vimspector](https://github.com/puremourning/vimspector) vim plugin.


#### [exa](https://github.com/ogham/exa)

A modern version of `ls`.


#### [fasd](https://github.com/clvv/fasd)

Command-line productivity booster, offers quick access to files and directories, inspired by autojump, z and v.


#### [fd](https://github.com/sharkdp/fd)

A simple, fast and user-friendly alternative to `find`.

> Used by [fzf](https://github.com/junegunn/fzf).


#### [fzf](https://github.com/junegunn/fzf)

A command-line fuzzy finder.


#### [glances](https://github.com/nicolargo/glances)

Glances an Eye on your system. A top/htop alternative for GNU/Linux, BSD, Mac OS and Windows operating systems.


#### [lazygit](https://github.com/jesseduffield/lazygit)

Simple terminal UI for git commands.


#### [nodejs npm](https://nodejs.org/zh-cn/download/package-manager/#arch-linux)

> The requirements for [coc.vim](https://github.com/neoclide/coc.nvim) neovim plugin etc.


#### [pynvim](https://github.com/neovim/pynvim)

Python client and plugin host for Nvim http://pynvim.readthedocs.io/en/latest/

> This is a requirement for [rnvimr](https://github.com/kevinhwang91/rnvimr) neovim plugin.


#### [ranger](https://github.com/ranger/ranger)

A VIM-inspired filemanager for the console.


#### [ripgrep-all](https://github.com/phiresky/ripgrep-all)

rga: ripgrep, but also search in PDFs, E-Books, Office documents, zip, tar.gz, etc.


#### [screenfetch](https://github.com/KittyKatt/screenFetch)

Fetches system/theme information in terminal for Linux desktop screenshots.


#### [tldr](https://github.com/tldr-pages/tldr)

[https://tldr.sh/](https://tldr.sh/)

Simplified and community-driven man pages.


#### [tmux](https://github.com/tmux/tmux)

Tmux is a terminal multiplexer.


#### [ueberzug](https://github.com/seebye/ueberzug)

Ueberzug is an alternative for w3mimgdisplay.

> This is used for [rnvimr](https://github.com/kevinhwang91/rnvimr) neovim plugin and display images in [ranger](https://github.com/ranger/ranger).


## Install all

### Arch

```shell
sudo pacman -S bat clang clang-tools-extra ctags diff-so-fancy exa fasd fd fzf glances lazygit nodejs npm python-pip python-setuptools ranger screenfetch tldr tmux
yay -S ripgrep-all
sudo pip3 install pynvim ueberzug
go get github.com/go-delve/delve/cmd/dlv
```
