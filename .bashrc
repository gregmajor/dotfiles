# Path Stuff
export PATH=/usr/local/bin:~/bin:$PATH
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

# SSH Agent Stuff
if [ -f ~/.sshagent ]; then
    source ~/.sshagent
fi

