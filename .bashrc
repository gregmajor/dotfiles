# Path Stuff
export PATH=/usr/local/sbin:/usr/local/bin:~/bin:$PATH:~/dotfiles/bin
# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Git + Bash Prompt
if [ -f ~/.bashprompt ]; then
    source ~/.bashprompt
fi

# Aliases
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

# Functions
if [ -f ~/.functions ]; then
    source ~/.functions
fi

# Exports
if [ -f ~/.exports ]; then
    source ~/.exports
fi

# Python Stuff
if [ -f ~/.python ]; then
    source ~/.python
fi

# Redis Stuff
if [ -f ~/.redis ]; then
     source ~/.redis
fi

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

# added by travis gem
[ -f /Users/greg/.travis/travis.sh ] && source /Users/greg/.travis/travis.sh
