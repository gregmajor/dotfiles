# Path Stuff
export PATH="/sbin:/usr/sbin:/usr/local/sbin:/usr/local/bin:~/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:~/dotfiles/bin:/usr/local/CrossPack-AVR/bin"

# Oh My Zsh User Configuration Stuff
source ~/.ohmyzsh

# Brew said I needed this when I installed on OSX
if [ -d /usr/local/share/zsh-completions ]; then
    fpath=(/usr/local/share/zsh-completions $fpath)
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

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

if [ -f ~/.sshagent ]; then
    source ~/.sshagent
fi

# Machine Specific Stuff
if [ -f ~/.localrc ]; then
    source ~/.localrc
fi

# added by travis gem
[ -f /Users/greg/.travis/travis.sh ] && source /Users/greg/.travis/travis.sh
