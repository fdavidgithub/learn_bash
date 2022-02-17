#!/bin/bash

export CONFIG_FILE=".bashrc"
export WORK_DIR=$(pwd)

echo "# My Settings..." >> $HOME/$CONFIG_FILE
echo "source $WORK_DIR/git-prompt.sh" >> $HOME/$CONFIG_FILE

export PS1='\u@\h\[\033[01;34m\] \w\[\033[0;32m\]$(__git_ps1 " (%s)")\n\[\033[01;34m\]$\[\033[00m\] '

echo "PS1='$PS1'" >> $HOME/$CONFIG_FILE 

