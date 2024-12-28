
# Add /usr/local/bin to the beginning of the PATH environment variable
# This ensures that executables in /usr/local/bin are found before other directories in the PATH
export PATH="/usr/local/bin:$PATH"

# Start starship terminal prompt
eval "$(starship init zsh)"