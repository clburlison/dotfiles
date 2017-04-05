#  ---------------------------------------------------------------------------
#
#  Description:  This file holds all my zshrc configurations
#
#  ---------------------------------------------------------------------------

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="agnoster"

source $ZSH/oh-my-zsh.sh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git ruby jump textmate vagrant bundler osx knife)

# Make rake work in zsh
alias rake='noglob rake'
# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Add my default username
DEFAULT_USER='clburlison'

# added by travis gem
#[ -f /Users/clburlison/.travis/travis.sh ] && source /Users/clburlison/.travis/travis.sh
