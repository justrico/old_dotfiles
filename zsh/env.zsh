# Set less or more as the default pager
if (( ! ${+PAGER} )); then
    if (( ${+commands[less]} )); then
        export PAGER=less
    else
        export PAGER=more
    fi
fi

export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.config/bin
export PATH=$PATH:$HOME/workspace/go/bin
export PATH=$PATH:$HOME/.cargo/bin
export GOPATH=$HOME/workspace/go

export XDG_CONFIG_HOME=$HOME/.config
export ZDOTDIR=$XDG_CONFIG_HOME/zsh
# Define Zim location
#: ${ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim}
export ZIM_HOME=$ZDOTDIR/.zim
export EDITOR='nvim'
export VISUAL='nvim'
export TERM=xterm-256color
export RANGER_LOAD_DEFAULT_RC="false"
export BAT_THEME="ansi-dark"
export FZF_DEFAULT_COMMAND="fd --exclude={.git,.idea,.vscode,node_modules,build} --type f"
#export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"

umask 022
setxkbmap -option "caps:swapescape"
