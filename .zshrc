# .zshrc

# uncomment to profile prompt startup with zprof
#zmodload zsh/zprof

# history
SAVEHIST=100000

# vim bindings
bindkey -v

source ~/dev/dotfiles/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle tmux

# Pure
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

#  Paths
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# virtualenvwrapper

#export WORKON_HOME=$HOME/.virtualenvs
#export PROJECT_HOME=$HOME/Devel
#source /usr/local/bin/virtualenvwrapper.sh

# Load NVM
export NVM_LAZY_LOAD=false
antigen bundle lukechilds/zsh-nvm

# Tell antigen that you're done.
antigen apply

# uncomment to finish profiling
#zprof

# Dokku
#alias dokku='bash $HOME/.dokku/contrib/dokku_client.sh'
# PRW Dokku Server
#alias prw='DOKKU_HOST=prd.prw.paas.impero.me dokku'
#alias stg='DOKKU_HOST=stg.impero.me dokku'
#alias prd='DOKKU_HOST=prd.impero.me dokku'

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Go
#export GOPATH=$(go env GOPATH)
#export PATH=$PATH:$GOPATH/bin
