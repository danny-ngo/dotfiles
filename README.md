# dotfiles
This repository contains config files used to customize my development environment on macOS. 

# Tools

- Package Manager: [brew](https://brew.sh/)
- Dotfile Management: [GNU Stow](https://www.gnu.org/software/stow/)
- Font: [Meslo LG](https://github.com/andreberg/Meslo-Font)
- Terminal: [Wezterm](https://wezfurlong.org/wezterm/index.html)
- Shell Prompt: [Starship](https://starship.rs/)
- Editor: [VS Code](https://code.visualstudio.com/)
- Color Theme: [Catppuccin](https://catppuccin.com/)
- Window Manager: [Raycast](https://www.raycast.com/)
- Status Bar: [SketchyBar](https://felixkratz.github.io/SketchyBar/)

# Installation

## Pre-Requisites
### Install Package Manager and Source Control
Install brew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
brew post-install command
```bash
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```
Install git
```bash
brew install git
```

### Clone Repo
Create and navigate to "Developer" directory
```bash
mkdir -p ~/Developer && cd ~/Developer
```

Clone repository
```bash
git clone https://github.com/danny-ngo/dotfiles.git
```

## Run Installation Script
*Installation script to be developed in the future.* 

1. Navigate to directory
```bash
cd dotfiles
```
2. Run installation script
```bash
install.sh
```

# Roadmap

Things to add:
- Sketchybar config
- Ghostty config
- Fastfetch config
- Raycast config
- Installation script
- Linux configs