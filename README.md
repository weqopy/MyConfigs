# MyConfigs
Configs for myself on Mac/Linux.

Backup and apply simply and quickly.

## Usage

1. Clone this repository
2. Edit `deploy.sh` to choose configs you need and deploy it:
  ```zsh
  sh deploy.sh
  ```
3. Make sure your shell is zsh if you have chosen `deploy_zsh.sh` and then run:
  ```zsh
  source ~/.zshrc
  ```
4. Enjoy!

## Support Items

### zsh

* [zsh-syntax-highlighting][zsh-syntax-highlighting]
* [zsh-autosuggestions][zsh-autosuggestions]
* [zsh-z][zsh-z]
* `git_current_branch` *From oh-my-zsh*
* Common configurations for zsh

[zsh-syntax-highlighting]: https://github.com/zsh-users/zsh-syntax-highlighting
[zsh-autosuggestions]: https://github.com/zsh-users/zsh-autosuggestions
[zsh-z]: https://github.com/agkozak/zsh-z

### hammerspoon

* app-manage: Launch or focus app by shortcut
* ime-switch: Switch ime for dual language users
* wifi-control: Control audiodevice mute by wifi name
* window-size: Manage app's window size

### git

Default and global `.gitconfig` & `.gitignore` configs.

### vim & nvim

Common configurations for vim & nvim
