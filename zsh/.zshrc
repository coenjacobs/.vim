# Path to your oh-my-zsh installation.
export ZSH=$HOME/.dotfiles/zsh/bundle/oh-my-zsh

export LC_ALL=en_US.UTF-8

export GOPATH=$(go env GOPATH)

# Disable auto updates as it's version controlled
DISABLE_AUTO_UPDATE="true"

ZSH_CUSTOM=$HOME/.dotfiles/zsh/custom/

# Theme
ZSH_THEME="coenjacobs"

# Plugins
plugins=(git vagrant brew composer gpg-agent)

# Fire up Oh My ZSH
source $ZSH/oh-my-zsh.sh

# Load aliases files (manual for now)
source $HOME/.dotfiles/docker/aliases.zsh
source $HOME/.dotfiles/git/aliases.zsh
source $HOME/.dotfiles/svn/aliases.zsh
source $HOME/.dotfiles/vagrant/aliases.zsh
source $HOME/.dotfiles/php/aliases.zsh
source $HOME/.dotfiles/tmux/aliases.zsh

# User configuration
export PATH="$GOPATH/bin:/home/coenjacobs/.npm:/home/coenjacobs/.composer/vendor/bin:node_modules/.bin::vendor/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

# Add RVM
#PATH=$PATH:$HOME/.rvm/bin

[ -f ~/.dotfiles/fzf/.fzf.zsh ] && source ~/.dotfiles/fzf/.fzf.zsh
