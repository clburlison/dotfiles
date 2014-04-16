# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
source $HOME/.aliases

# Set name of the theme to load.
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)


# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='mate'
fi


# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"


# Allow boxen to work in zsh
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh


export PATH=$HOME/bin:/usr/local/bin:$PATH
