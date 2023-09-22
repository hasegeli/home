# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gallois"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

SAVEHIST=10000000

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
    fabric
    git
    github
    jira
    osx
    paver
    pip
    python
    redis-cli
    rsync
    ssh-agent
    svn
    vimode
)

test -e $ZSH/oh-my-zsh.sh && source $ZSH/oh-my-zsh.sh
test -e $HOME/.iterm2_shell_integration.zsh && source $HOME/.iterm2_shell_integration.zsh
test -e $HOME/.profile && source $HOME/.profile

# Aliases for no-correct
if [ -f ~/.zsh_nocorrect ]; then
    while read -r COMMAND; do
        alias $COMMAND="nocorrect $COMMAND"
    done < ~/.zsh_nocorrect
fi

PROMPT='%{$fg[cyan]%}%~% %B$%b '

# Global variables
export XDG_CONFIG_HOME=$HOME/.config
export EDITOR=vim
export PAGER=less
export LESS=XR

# Aliases for typos
alias mkdit=mkdir
