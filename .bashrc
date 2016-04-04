# Path Stuff
export PATH=/usr/local/sbin:/usr/local/bin:~/bin:$PATH:~/dotfiles/bin
# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Git + Bash Prompt
source ~/.bashprompt

# Aliases
source ~/.aliases

# Functions
source ~/.functions

# Exports
source ~/.exports

# Python Stuff
source ~/.python

# Redis Stuff
source ~/.redis

# SSH
export SSH_KEY_PATH="~/.ssh/rsa_id"

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
