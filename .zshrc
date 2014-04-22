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

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

source $ZSH/oh-my-zsh.sh

# Set default vagrant provider
export VAGRANT_DEFAULT_PROVIDER=vmware_fusion

#Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
#Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='mate'
fi

# Allow boxen to work in zsh
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

# Set custom paths
export PATH=$HOME/bin:$PATH
export PATH=$HOME/Dropbox/Config/User/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/packer:$PATH

# Make rake work in zsh
alias rake='noglob rake'

# Aliases files to be used between bash & zshrc
source $HOME/.aliases
