# .zshrc

# uncomment to profile prompt startup with zprof
#zmodload zsh/zprof

# history
SAVEHIST=100000

# vim bindings
bindkey -v

source ~/Development/dotfiles/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle tmux

# Syntax highlighting bundle.
#antigen bundle zsh-users/zsh-syntax-highlighting

# Don't use a theme
# antigen theme robbyrussell

antigen bundle sindresorhus/pure

# Tell antigen that you're done.
antigen apply

#  Paths
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH=/Applications/MAMP/bin/php/php5.5.10/bin:$PATH

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# [ -s "/Users/pvalentim/.nvm/nvm.sh" ] && . "/Users/pvalentim/.nvm/nvm.sh" # This loads nvm
alias lnvm='. ~/.nvm/nvm.sh'

# Bower
alias bower='noglob bower'

# virtualenvwrapper

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

# uncomment to finish profiling
#zprof
