#  ---------------------------------------------------------------------------
#
#  Description:  This file holds all my bashrc configurations
#
#  Sections:
#  1.   Environment Configuration
#
#  ---------------------------------------------------------------------------

#   -------------------------------
#   1.  ENVIRONMENT CONFIGURATION
#   -------------------------------

#   Set Paths
#   ------------------------------------------------------------
	export PATH=/usr/local/bin:$PATH
	export PATH="/usr/local/packer:$PATH"
	export PATH="~/Dropbox/Config/User/bin:$PATH"


#   Set Default Editor (change 'Nano' to the editor of your choice)
#   ------------------------------------------------------------
	# export EDITOR=/usr/bin/nano
	export EDITOR="/usr/local/bin/mate -w"	
    
#   Set default blocksize for ls, df, du
#   from this: http://hints.macworld.com/comment.php?mode=view&cid=24491
#   ------------------------------------------------------------
    export BLOCKSIZE=1k

#   Add color to terminal
#   from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
#   ------------------------------------------------------------
	export CLICOLOR=1
	export LSCOLORS=GxFxCxDxBxegedabagaced
	
	

#   Set bash to use .aliases files
#   ------------------------------------------------------------	
	if [ -f ~/.aliases ]; then
	    . ~/.aliases
	fi