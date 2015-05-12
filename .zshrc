#  ---------------------------------------------------------------------------
#
#  Description:  This file holds all my zshrc configurations
#
#  ---------------------------------------------------------------------------

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
if [ -f ~/.oh-my-zsh/custom/themes/clburlison.zsh-theme ]; then
	ZSH_THEME="clburlison"
else
	ZSH_THEME="robbyrussell"
fi

source $ZSH/oh-my-zsh.sh

# Set default vagrant provider
export VAGRANT_DEFAULT_PROVIDER=vmware_fusion
alias vagrant_up="vagrant up --provider=virtualbox"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git ruby jump textmate)

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='mate'
fi

# Set custom paths
export PATH=$HOME/bin:$PATH
export PATH=$HOME/Dropbox/Config/User/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/packer:$PATH
export PATH=/usr/local/packer:$PATH
export PATH=/opt/boxen/repo/script:$PATH
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/db/bin:$PATH
export DERBY_HOME="$JAVA_HOME/db"
export CLASSPATH="${DERBY_HOME}/lib/derby.jar:${DERBY_HOME}/lib/derbytools.jar:"

# Make rake work in zsh
alias rake='noglob rake'

# Aliases files to be used between bash & zshrc
source $HOME/.aliases

# Allow boxen to work in zsh
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh