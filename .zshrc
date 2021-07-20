# .zshrc

export EDITOR='vim'
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
antigen bundle tmuxinator

# AWS
AWS_CONFIG_FILE=~/.aws/config
antigen bundle aws

# Pure
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

#  Paths
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"

# zlib
export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# virtualenvwrapper

export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

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
export GOPATH=$(go env GOPATH)
export PATH=$PATH:$GOPATH/bin

# Yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Fnm
export PATH=/Users/pvalentim/.fnm/current/bin:$PATH
export FNM_MULTISHELL_PATH=/Users/pvalentim/.fnm/current
export FNM_DIR=/Users/pvalentim/.fnm
export FNM_NODE_DIST_MIRROR=https://nodejs.org/dist
export FNM_LOGLEVEL=info
