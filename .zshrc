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

#   Path to your oh-my-zsh configuration.
#   ------------------------------------------------------------
	export ZSH=$HOME/.oh-my-zsh
	source $HOME/.aliases
	
#   Set default vagrant provider
#   ------------------------------------------------------------	
	export VAGRANT_DEFAULT_PROVIDER=vmware_fusion

#   Set name of the theme to load.
#   ------------------------------------------------------------
	ZSH_THEME="robbyrussell"
	source $ZSH/oh-my-zsh.sh

#	Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# 	Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
#	Example format: plugins=(rails git textmate ruby lighthouse)
#   ------------------------------------------------------------
	plugins=(git)

#   Preferred editor for local and remote sessions
#   ------------------------------------------------------------
	if [[ -n $SSH_CONNECTION ]]; then
  		export EDITOR='nano'
	else
  		export EDITOR='mate'
	fi

#   Allow boxen to work in zsh
#   ------------------------------------------------------------
	[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

#   Set custom paths
#   ------------------------------------------------------------
	export PATH=$HOME/bin:$PATH
	export PATH=/usr/local/bin:$PATH
	export PATH="/usr/local/packer:$PATH"
	export PATH="~/Dropbox/Config/User/bin:$PATH"
	
#   Make rake work in zsh
#   ------------------------------------------------------------
	alias rake='noglob rake'
