# Path Stuff
export PATH="/usr/local/sbin:/usr/local/bin:~/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:~/dotfiles/bin"

# Oh My Zsh User Configuration Stuff
source ~/.ohmyzsh

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

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

if [ -f ~/.sshagent ]; then
    source ~/.sshagent
fi

# Machine Specific Stuff
if [ -f ~/.localrc ]; then
    source ~/.localrc
fi
