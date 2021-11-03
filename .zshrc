# .zshrc

export EDITOR='vim'
export LS_COLORS="$(vivid generate snazzy)"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd beep extendedglob nomatch
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
setopt append_history
setopt share_history

# Load all files from .shell/zshrc.d directory
if [ -d $HOME/.shellrc/zshrc.d ]; then
  for file in $HOME/.shellrc/zshrc.d/*.zsh; do
    source $file
  done
fi

# Start ssh agent
if [ $(ps ax | grep "[s]sh-agent" | wc -l) -eq 0 ] ; then
    eval $(ssh-agent -s) > /dev/null
    if [ "$(ssh-add -l)" = "The agent has no identities." ] ; then
        # Auto-add ssh keys to your ssh agent
        # Example:
        # ssh-add ~/.ssh/id_rsa > /dev/null 2>&1
    fi
fi

# Pure
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

# ls colors
alias ls="gls --color"

# fnm
export PATH=/home/pedro/.fnm:$PATH
eval "`fnm env`"

# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"

# Look so pretty
neofetch
