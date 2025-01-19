### MACOS INSTALLATION SCRIPT ###
echo "Running macOS installation..."

# Install brew packages
brew tap FelixKratz/formulae    # add tap for SketchyBar
brew install fastfetch minikube sketchybar starship stow uv
brew install --cask alt-tab appcleaner bitwarden brave-browser chatgpt daisydisk discord docker eloston-chromium figma \
    flux font-hack-nerd-font font-meslo-lg-nerd-font ghostty ilok-license-manager karabiner-elements localsend notion \
    obsidian raycast readdle-spark spotify visual-studio-code vivaldi wezterm zen-browser zsh-syntax-highlighting


# Create dotfile symlinks with stow
stow_ignore_list=("scripts" "wallpapers")

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

brew services start sketchybar