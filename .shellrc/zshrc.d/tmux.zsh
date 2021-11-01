if ! (( $+commands[tmux] )); then
  print "zsh tmux plugin: tmux not found. Please install tmux before using this plugin." >&2
  return 1
fi

# ALIASES

alias ta='tmux attach -t'
alias tad='tmux attach -d -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'
alias tksv='tmux kill-server'
alias tkss='tmux kill-session -t'