# dotfiles

This repository contains config files used to customize my development environment on macOS. 

# Tools

- Package Manager: [Homebrew](https://brew.sh/)
- Dotfile Management: [GNU Stow](https://www.gnu.org/software/stow/)
- Font: [Meslo LG](https://github.com/andreberg/Meslo-Font)
- Terminal: [Ghostty](https://ghostty.org/)
- Shell Prompt: [Starship](https://starship.rs/)
- Editor: [VS Code](https://code.visualstudio.com/)
- Color Theme: [Catppuccin](https://catppuccin.com/)
- Window Manager: [Raycast](https://www.raycast.com/)
- Status Bar: [SketchyBar](https://felixkratz.github.io/SketchyBar/)
- File Browser: [Yazi](https://yazi-rs.github.io/)
- System Information: [Fastfetch](https://github.com/fastfetch-cli/fastfetch)

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
1. Navigate to directory
```bash
cd dotfiles
```
2. Run installation script
```bash
sh install.sh
```

# Roadmap

Things to add:
- Separate SketchyBar monitor config
- Fastfetch config
- Yazi config?
- [Aerospace](https://nikitabobko.github.io/AeroSpace/guide.html) tiling window manager?
- Raycast config
- Screenshots
- Advanced zsh configs
- VS Code settings
- Linux support

# Deprecated

- Terminal: [WezTerm](https://wezfurlong.org/wezterm/index.html)
- Keybind Modification: [Karabiner-Elements](https://karabiner-elements.pqrs.org/)