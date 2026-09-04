# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias c="clear"

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias sites="cd $HOME/Sites"

# Laravel
alias a="php artisan"
alias ams="php artisan migrate:fresh --seed"

# PHP
alias cfresh="rm -rf vendor/ composer.lock && composer i"

# JS
alias nfresh="rm -rf node_modules/ package-lock.json && npm install"
alias watch="npm run watch"

# Git
alias gst="git status"
alias gb="git branch"
alias gc="git checkout"
alias gl="git log --oneline --decorate --color"
alias gdiff="git diff"
alias amend="git add . && git commit --amend --no-edit"
alias commit="git add . && git commit -m"
alias pull="git pull"
alias push="git push"
alias wip="commit wip"
alias nah="git clean -fd && git reset --hard HEAD"

# Other
alias killmail="sudo rm /var/mail/$USER"
