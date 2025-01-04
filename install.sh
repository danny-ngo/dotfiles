if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Detected Operating System: macOS"
    sh ./scripts/.install_mac.sh
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Detected Operating System: Linux"
    sh ./scripts/.install_linux.sh
else
    echo "Error detecting supported operating system." && exit 1
fi