# Dotfiles

Credits: https://github.com/driesvints/dotfiles

### Backup your data

- Commit and push any changes/branches to your git repositories
- Save all important documents from non-iCloud directories
- Export important data from your local databases

## Setting up your Mac

After backing up your old Mac you may now follow these install instructions to set up a new one.

1. Update macOS to the latest version through System Preferences.

2. Generate a new SSH key by running:

   ```zsh
   curl https://raw.githubusercontent.com/vguerrerobosch/dotfiles/HEAD/ssh.sh | sh -s "your@email.com"
   ```

   Then [add the public key to GitHub](https://github.com/settings/keys) and any other services (GitLab, etc.).

3. Clone this repo to `~/.dotfiles`:

   ```zsh
   git clone git@github.com:vguerrerobosch/dotfiles.git ~/.dotfiles
   ```

4. Update `gitconfig` with your name and email.

5. Run the installation:

   ```zsh
   ~/.dotfiles/fresh.sh
   ```

6. Open **Herd** from your Applications folder and install the PHP versions you need.

7. In Herd, configure any sites that use a non-default web root (e.g. `/public` for WordPress projects).

8. Restart your Mac.

Your Mac is now ready to use!
