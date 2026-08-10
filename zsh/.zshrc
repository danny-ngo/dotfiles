
# Add /usr/local/bin to the beginning of the PATH environment variable
# This ensures that executables in /usr/local/bin are found before other directories in the PATH
export PATH="/usr/local/bin:$HOME/.local/bin:$HOME/.bun/bin:$PATH"

# Yazi Shell Wrapper
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

eval "$(mise activate zsh)"

# Start starship terminal prompt
eval "$(starship init zsh)"

# Enable zsh syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Added by Devin
export PATH="/Users/danny/.codeium/windsurf/bin:$PATH"
