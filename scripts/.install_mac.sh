### MACOS INSTALLATION SCRIPT ###
echo "Running macOS installation..."

# Install brew packages #
brew tap FelixKratz/formulae    # add tap for SketchyBar
# Terminal Tools
brew install fastfetch sketchybar starship stow
brew install --cask font-hack-nerd-font font-meslo-lg-nerd-font ghostty tmux zsh-syntax-highlighting
brew install yazi ffmpeg sevenzip jq poppler fd ripgrep fzf zoxide imagemagick font-symbols-only-nerd-font
# Development Tools
brew install --cask bruno docker figma visual-studio-code
brew install deno minikube oven-sh/bun/bun uv
# Applications
brew install --cask alt-tab appcleaner bitwarden brave-browser chatgpt daisydisk discord flux google-chrome \
    ilok-license-manager localsend notion obsidian raindropio raycast readdle-spark spotify vivaldi zen-browser


# Create dotfile symlinks with stow
stow_ignore_list=("scripts" "wallpapers" "karabiner" "wezterm")

for dir in */ ;
do
    dir=${dir%*/}   # remove the trailing "/"
    if [[ ! " ${stow_ignore_list[@]} " =~ " ${dir} " ]]; then   # dir not in stow ignore list
        stow -v -R -t ~ ${dir}
    fi
done

# Speed Up Dock Animation
defaults write com.apple.dock autohide-delay -int 0
defaults write com.apple.dock autohide-time-modifier -float 0.45
killall Dock

# Auto-Hide Mac Status Bar
defaults write NSGlobalDomain _HIHideMenuBar -bool true
killall Dock
killall Finder

brew services start sketchybar