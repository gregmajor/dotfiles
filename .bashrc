# Path Stuff
export PATH=/usr/local/bin:~/bin:$PATH

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
