# Dotfiles

Credits: https://github.com/driesvints/dotfiles

### Backup your data

- Commit and push any changes/branches to your git repositories
- Save all important documents from non-iCloud directories
- Save all of your work from apps which aren't synced through iCloud
- Export important data from your local database
- Update [mackup](https://github.com/lra/mackup) to the latest version and ran `mackup backup`

## Setting up your Mac

After backing up your old Mac you may now follow these install instructions to setup a new one.

1. Update macOS to the latest version through system preferences
2. [Generate a new public and private SSH key](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) by running:

   ```zsh
   curl https://raw.githubusercontent.com/vguerrerobosch/dotfiles/HEAD/ssh.sh | sh -s "<your-email-address>"
   ```

3. Clone this repo to `~/.dotfiles` with:

    ```zsh
    git clone https://github.com/vguerrerobosch/dotfiles.git ~/.dotfiles
    ```

4. Run the installation with:

    ```zsh
    ~/.dotfiles/fresh.sh
    ```

5. Restart your computer to finalize the process

Your Mac is now ready to use!
