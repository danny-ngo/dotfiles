# dotfiles

Personal user configuration for my development environment. This repository is configuration-only: software installation, package selection, operating-system defaults, and machine provisioning are managed externally.

## Configuration

Directories such as `fastfetch`, `ghostty`, `git`, `mise`, `starship`, `wezterm`, and `zsh` use a [GNU Stow](https://www.gnu.org/software/stow/)-compatible layout where applicable. The repository also retains configuration exports and supporting assets, including Raycast settings and wallpapers.

The environment consuming this repository is responsible for installing Git, GNU Stow, and the programs used by these configurations. It is also responsible for choosing which configuration directories to apply.

For example, from an existing checkout with the prerequisites already available:

```sh
stow --restow --target="$HOME" git starship zsh
```

This only links the selected user configuration; it does not install or provision software.

## Deprecated configuration

- [WezTerm](https://wezfurlong.org/wezterm/index.html), replaced by Ghostty
- [Karabiner-Elements](https://karabiner-elements.pqrs.org/), replaced by Raycast Super Key features
- [SketchyBar](https://felixkratz.github.io/SketchyBar/)
