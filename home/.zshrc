# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="patricka"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

set -k
export INTERACTIVE_COMMENTS="true"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

skip_global_compinit=1

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx brew)

source /usr/local/bin/virtualenvwrapper.sh 

source $ZSH/oh-my-zsh.sh
#source $ZSH/update.sh

#aliases
alias git=hub
source /Users/patricka/.rvm/scripts/rvm

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin

PATH=$PATH:$HOME/.rvm/bin:`rvm gemdir`/bin # Add RVM to PATH for scripting