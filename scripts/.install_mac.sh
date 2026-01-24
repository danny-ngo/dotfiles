### MACOS INSTALLATION SCRIPT ###
echo "Running macOS installation..."

# Install brew packages
echo "Installing brew packages..."

# Terminal Configuration Tools
brew install starship stow zsh-syntax-highlighting
# Useful Utilities
brew install bat btop fastfetch tlrc
# Terminal Tools
brew install --cask ghostty font-meslo-lg-nerd-font
brew install yazi ffmpeg sevenzip jq poppler fd ripgrep fzf zoxide resvg imagemagick font-symbols-only-nerd-font
# Development Tools
brew install go lazydocker lazygit minikube oven-sh/bun/bun tmux uv
brew install --cask bruno docker docker-desktop figma visual-studio-code

# GUI Applications
echo "Installing GUI applications..."

# Web Browsers
brew install --cask brave-browser google-chrome raindropio vivaldi zen
# Essential Apps
brew install --cask bitwarden chatgpt discord localsend notion obsidian readdle-spark spotify
# System Utilities
brew install --cask alt-tab appcleaner boring-notch daisydisk flux-app raycast
# Other Apps
brew install --cask ilok-license-manager obs zoom


# Create dotfile symlinks with stow
stow_ignore_list=("karabiner" "raycast" "screenshots" "scripts" "sketchybar" "wallpapers" "wezterm")

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

# # Auto-Hide Mac Status Bar
# defaults write NSGlobalDomain _HIHideMenuBar -bool true
# killall Dock
# killall Finder