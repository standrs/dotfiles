# Dotfiles

The setup script should work on any on a debian based distro, but has only been tested on Ubuntu 20.04.

## Default config
`setup.sh` will install `ripgrep`, `fd`, `fzf`, `neovim`, `vim-plug`, and `ohmyzsh`. I'm like 90% sure the script is non destructive.

## Setup
Run with `zsh` so the `source` command works.

```bash
$ zsh setup.sh
```

## Customizing
Under `zshrc.d` you can create a `local` directory and add additional zsh configs that are intended to be used only on the current machine. These files will be ignored by git.
For example
```
zshrc.d
|--local
|  |--supersecretconfig.zsh
```

# Cleanup script
`cleanup.sh` can be run to remove the `.old` files created by `setup.sh`
