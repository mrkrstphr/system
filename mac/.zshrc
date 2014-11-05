export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="ys"

plugins=(cap Composer git ruby)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/Users/mrkrstphr/.composer/vendor/bin:/Users/mrkrstphr/bin:$PATH"
export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"

export EDITOR='vim'
export PAGER='less -X'

alias updatedb='sudo /usr/libexec/locate.updatedb'
alias ll='ls -lh'

# git related aliases
alias pruner='git remote prune $(foreach remote in `git remote`; do echo -n "$remote "; done;)'
alias pullup='git pull --ff-only upstream master'
alias pusho='git push --force origin master'
alias gitclean='pruner && pullup && pusho'

function restart-php() {
    launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.php56.plist
    launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.php56.plist
}

function restart-nginx() {
    sudo nginx -s stop
    sudo nginx
}

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
