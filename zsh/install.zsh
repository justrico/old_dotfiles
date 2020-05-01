#!/usr/bin/env zsh
# Author: Rico Yang

fun() {
    printf -- "\nWhat linux distro are you using?\n"
    printf -- "1 Arch Linux (Manjaro)\n2 Ubuntu (Debian)\n3 CentOS (RedHat)\n"
    printf -- "4 Fedora\n5 OpenSUSE\n\n"       
    vared -p "Enter the numbre: " -c number
    case $number {              
        (1)
            printf -- "Installing $1...\n"
            sudo pacman -Sy $1    
            ;; 
        (2)
            printf -- "Installing $1...\n"
            sudo apt install $1 -y
            ;;
        (3)
            printf -- "Installing $1...\n"
            sudo yum install $1 -y
            ;;
        (4)
            printf -- "Installing $1...\n"
            sudo dnf install $1   
            ;;
        (5)
            printf -- "Installing $1...\n"
            sudo zypper install $1
            ;;
    }
    return
}

# Detect whether zsh is installed
_=$(command -v zsh)
if [ "$?" != "0" ];then
  printf -- "\033[31mYou don't seem to have zsh installed. \033[0m\n"
  vared -p "Are you want to install zsh now? [y/n]: " -c input
  case $input {
    ([yY])
      fun zsh
      if [ $? -ne 0 ];then
        printf -- "\033[31m\nFailed to install zsh.\033[0m\n"
      else
        printf -- "\033[32m\nZsh is successful installed.\033[0m\n"
      fi
      ;;
    ([nN])
      printf -- "\033[33m\nZsh is not installed. Please install it first.\033[0m\n"
      printf -- "\033[31mThe script is interrupted because the zsh is not installed.\033[0m\n"
      printf -- "\033[37mExiting with code 127...\n\033[0m"
      exit 127
      ;;
    (*)
      printf -- "\033[33mJust enter y or n, please.\033[0m\n"
      exit
      ;;
  }
fi

# Detect zsh version
autoload -Uz is-at-least && if ! is-at-least 5.2; then
  print -u2 -PR "%F{red}${0}: Error starting installation. You're using Zsh version %B${ZSH_VERSION}%b and versions < %B5.2%b are not supported with Zim. Please upgrade your Zsh manually.%f"
  return 1
fi

# Detect whether curl is installed
_=$(command -v curl)
if [ "$?" != "0" ];then
  printf -- "\033[31mYou don't seem to have curl installed. \033[0m\n"
  vared -p "Are you want to install curl now? [y/n]: " -c input
  case $input {
    ([yY])
      fun curl
      if [ $? -ne 0 ];then
        printf -- "\033[31m\nFailed to install curl.\033[0m\n"
      else
        printf -- "\033[32m\nCurl is successful installed.\033[0m\n"
      fi
      ;;
    ([nN])
      printf -- "\033[33m\nCurl is not installed. Please install it first.\033[0m\n"
      printf -- "\033[31mThe script is interrupted because the curl is not installed.\033[0m\n"
      printf -- "\033[37mExiting with code 127...\n\033[0m"
      exit 127
      ;;
    (*)
      printf -- "\033[33mJust enter y or n, please.\033[0m\n"
      exit
      ;;
  }
fi

# Backup exist .zshrc file
if [ -f $HOME/.zshrc ];then
    printf -- "Exist .zshrc file has been detected. Doing backup..."
    printf -- "\033[32mYour .zshrc file has backed up to $HOME/zshrc.backup\033[0m"
    mv $HOME/.zshrc $HOME/zshrc.backup
fi

export ZDOTDIR=$HOME/.config/zsh
if [ ! -d $ZDOTDIR ];then
    mkdir $HOME/.config/zsh
fi

export ZIM_HOME=$ZDOTDIR/.zim
if [ ! -d $ZIM_HOME ];then
    mkdir $HOME/.config/zsh/.zim
fi

set -e

printf -- "Coping files to $ZDOTDIR...\n"
cp ./{env.zsh,aliases.zsh,vi.zsh,plugins.zsh,fzf.zsh,zshrc} $HOME/.config/zsh
printf -- "Creating .zshrc file..."
echo 'source $ZDOTDIR/zshrc' >> $ZDOTDIR/.zshrc
printf -- "Creating .zimrc file..."
cp ./zimrc $ZDOTDIR/.zimrc

printf -- "Downloading Zim framework..."
curl -L https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh -o $ZDOTDIR/.zim/zimfw.zsh

printf -- "Installing Zim and zmoudles..."
source $ZDOTDIR/.zim/zimfw.zsh install
