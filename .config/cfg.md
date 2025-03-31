To manage your dotfiles using a bare Git repository, follow these steps:

1. **Initialize a bare Git repository:**

   ```bash
   git init --bare $HOME/.cfg
   ```

   This command creates a bare Git repository in your home directory named `.cfg`. A bare repository doesn't have a working directory and is typically used for sharing. citeturn0search0

2. **Create a Git alias for easier management:**

   ```bash
   alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME' (better put this into .bashrc or .zshrc or similar file)
   config config --local status.showUntrackedFiles no
   ```

   This alias allows you to use the `config` command to manage your dotfiles, specifying the Git directory and working tree. citeturn0search0

3. **Add `.cfg` to `.gitignore`:**

   ```bash
   echo ".cfg" >> $HOME/.gitignore
   ```

   This prevents Git from tracking changes to the `.cfg` repository itself, avoiding potential recursion issues. citeturn0search0

4. **Commit your existing dotfiles:**

   ```bash
   config add .bashrc .vimrc
   config commit -m "Initial commit of dotfiles"
   ```

   Replace `.bashrc` and `.vimrc` with the dotfiles you want to track. This stages and commits them to the repository. citeturn0search0

5. **Push your repository to a remote server:**

   ```bash
   config remote add origin git@example.com:username/dotfiles.git
   config push -u origin main
   ```

   Replace the URL with your remote repository's address. This step allows you to back up and synchronize your dotfiles across multiple machines. citeturn0search0

6. **Clone your dotfiles repository on a new system:**

   ```bash
   git clone --bare git@example.com:username/dotfiles.git $HOME/.cfg
   ```

   This clones your dotfiles repository as a bare repository in the `.cfg` directory on the new system. citeturn0search0

7. **Define the `config` alias on the new system:**

   ```bash
   alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
   ```

   This sets up the `config` alias to manage your dotfiles on the new system. citeturn0search0

8. **Checkout the content from the bare repository:**

   ```bash
   config checkout
   ```

   This checks out the tracked dotfiles into your home directory. If there are conflicts with existing files, you may need to back them up or remove them. citeturn0search0

9. **Set the repository to not show untracked files:**

   ```bash
   config config --local status.showUntrackedFiles no
   ```

   This hides untracked files in the repository status, providing a cleaner output when managing your dotfiles.

By following these steps, you can effectively manage your dotfiles using a bare Git repository, allowing for version control and synchronization across multiple systems without the need for additional tooling or symlinks. citeturn0search0
