#!/bin/sh

echo "Setting up your Mac..."

# Install Xcode Command Line Tools if not present
if ! xcode-select -p &>/dev/null; then
  xcode-select --install
  echo "Please complete Xcode CLI Tools installation, then re-run this script."
  exit 1
fi

# Check for Homebrew and install if we don't have it
if ! command -v brew &>/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "$HOME/.zprofile"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Symlink .zshrc from dotfiles (idempotent)
if [ ! -L "$HOME/.zshrc" ]; then
  rm -f "$HOME/.zshrc"
  ln -s "$HOME/.dotfiles/.zshrc" "$HOME/.zshrc"
fi

# Symlink .gitconfig from dotfiles (idempotent)
if [ ! -L "$HOME/.gitconfig" ]; then
  rm -f "$HOME/.gitconfig"
  ln -s "$HOME/.dotfiles/gitconfig" "$HOME/.gitconfig"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew bundle --file "$HOME/.dotfiles/Brewfile"

# Set up fnm default Node version (LTS)
eval "$(fnm env)"
fnm install --lts
fnm default lts-latest

# Set default MySQL root password and auth type.
# NOTE: Change 'password' to a strong password before running.
if mysql -u root --connect-expired-password -e "" 2>/dev/null; then
  mysql -u root -e "ALTER USER root@localhost IDENTIFIED WITH mysql_native_password BY 'password'; FLUSH PRIVILEGES;"
fi

# Install global Composer packages
composer global require laravel/installer

# Remove "Last login" message for new tabs in terminal
touch "$HOME/.hushlogin"

# Create a Sites directory
mkdir -p "$HOME/Sites"

echo ""
echo "Done! Next steps:"
echo "  1. Open Herd and install your required PHP versions."
echo "  2. In Herd, configure per-site web roots for WordPress /public projects."
echo "  3. Update the MySQL root password in this script to something strong."
echo "  4. Restart your Mac."
