# Dotfiles

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

## Contents

- **Git** - Configuration with sensible defaults
- **Claude Code** - Custom commands and skills

## Usage

```sh
# Install chezmoi and apply dotfiles
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply jacobmillward

# Or if chezmoi is already installed
chezmoi init --apply jacobmillward
```
