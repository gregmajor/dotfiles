# Path to the oh-my-zsh configuration folder.
ZSH=$HOME/.oh-my-zsh

# Set the theme name (look in ~/.oh-my-zsh/themes/).
ZSH_THEME="bira"

# Plugins separated by spaces (~/.oh-my-zsh/plugins/)
plugins=(git)

# Aliases
source ~/.aliases

# Functions
source ~/.functions

# Exports
source ~/.exports

# Python Stuff
if [ -f ~/.python ]; then
    source ~/.python
fi

# Redis Stuff
if [ -f ~/.redis ]; then
    source ~/.redis
fi

# SSH Agent Stuff
if [ -f ~/.sshagent ]; then
    source ~/.sshagent
fi

# Machine Specific Stuff
# Put private things in the .localrc file. This is good for things like
# API key exports and other stuff you wouldn't want checked in to source
# control. It's also nice for things that are truly machine specific.
if [ -f ~/.localrc ]; then
    source ~/.localrc
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/greg/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
