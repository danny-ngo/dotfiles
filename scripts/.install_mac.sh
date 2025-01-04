### MACOS INSTALLATION SCRIPT ###
echo "Running macOS installation..."

# Install brew packages
brew tap FelixKratz/formulae    # add tap for SketchyBar
brew install fastfetch minikube sketchybar starship stow uv
brew install --cask alt-tab appcleaner bitwarden brave-browser chatgpt daisydisk discord docker figma flux \
    font-hack-nerd-font font-meslo-lg-nerd-font ghostty ilok-license-manager localsend notion obsidian raycast \
    readdle-spark spotify visual-studio-code vivaldi wezterm zen-browser


# Create dotfile symlinks with stow
stow_ignore_list=("scripts" "wallpapers")

for dir in */ ;
do
    dir=${dir%*/}   # remove the trailing "/"
    if [[ ! " ${stow_ignore_list[@]} " =~ " ${dir} " ]]; then   # dir not in stow ignore list
        stow --simulate -v -R -t ~ ${dir}
    fi
done


brew services start sketchybar