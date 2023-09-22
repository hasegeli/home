# Source global definitions
test -e /etc/bashrc && source /etc/bashrc

# User specific global variables
export EDITOR=vim
export PAGER=less
export LESS=XR
export XDG_CONFIG_HOME=$HOME/.config

# System specific profile
test -e $HOME/.profile && source $HOME/.profile
