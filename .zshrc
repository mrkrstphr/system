ZSH=$HOME/.oh-my-zsh
ZSH_THEME="frisk"

alias ls='ls -lh --color=auto'

alias pullup='git pull upstream master'
alias pusho='git push origin master'
alias pruner='git remote prune $(foreach remote in `git remote`; do echo -n "$remote "; done;)'
alias gitclean='pullup && pusho && pruner && git branch --merged'

plugins=(Composer git cap)
source $ZSH/oh-my-zsh.sh

export PAGER="less -X"
export EDITOR="vim"
