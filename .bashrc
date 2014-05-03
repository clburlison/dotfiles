#  ---------------------------------------------------------------------------
#
#  Description:  This file holds all my bashrc configurations
#
#  ---------------------------------------------------------------------------

# Set custom paths
export PATH=$HOME/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH="/usr/local/packer:$PATH"
export PATH="~/Dropbox/Config/User/bin:$PATH"
export PATH=/opt/boxen/repo/script:$PATH


# Set Default Editor
# export EDITOR=/usr/bin/nano
export EDITOR="/usr/local/bin/mate -w"	
    
#   Set default blocksize for ls, df, du: http://hints.macworld.com/comment.php?mode=view&cid=24491
export BLOCKSIZE=1k

# Add color to terminal from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
	
	
# Set bash to use .aliases files
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi


# Allow boxen to work in bash
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh