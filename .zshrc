# Path to your dotfiles.
export DOTFILES=$HOME/.dotfiles

# Homebrew (Apple Silicon)
eval "$(/opt/homebrew/bin/brew shellenv)"

# Load dotfiles config files
for file in "$DOTFILES"/*.zsh; do
  source "$file"
done

# Zsh navigation
setopt AUTO_CD

# Zsh completion
autoload -Uz compinit
compinit

# Load history-search functions
autoload -Uz up-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# Make ↑/↓ use them
bindkey '^[[A' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search

# Starship prompt
eval "$(starship init zsh)"

# fnm (Fast Node Manager)
eval "$(fnm env --use-on-cd)"

# History settings
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY

# Change to Sites directory for new interactive shells
[[ -o interactive ]] && cd ~/Sites


# Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/victor/Library/Application Support/Herd/config/php/84"


# Herd injected PHP binary.
export PATH="/Users/victor/Library/Application Support/Herd/bin":$PATH
