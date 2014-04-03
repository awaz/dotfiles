export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/bin:$PATH:/usr/local/sbin

# terminal color
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# Path for Homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# node.js
export NODE_PATH=/usr/local/lib/node:$PATH
export PATH=/usr/local/share/npm/bin:$PATH

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# cabal
export PATH=${HOME}/.cabal/bin:$PATH

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# python


# sublime
export EDITOR='subl -w'
