# Ultimate Terminal Greeting 🚀

A dynamic, personalized terminal greeting script that delivers motivational messages based on the time of day.

## Features ✨
- Time-based personalized greetings
- Colorful and animated terminal output
- Random inspirational messages
- Support for both bash and zsh shells

## Requirements 📋
- Unix-like operating system (Linux/MacOS)
- bash or zsh shell
- curl

## Installation 💻

```bash
# Clone the repository
git clone https://github.com/yourusername/ultimate-terminal-greeting.git

# Navigate to the directory
cd ultimate-terminal-greeting

# Make the script executable
chmod +x install.sh

# Run the installer
./install.sh
```

## Customization 🎨
The script installs to `~/.ultimate_greet/`. You can modify:
- Message arrays
- Color schemes
- Timing intervals

## Uninstallation 🗑️
```bash
# Remove the installation directory
rm -rf ~/.ultimate_greet/

# Remove the source line from your shell config
# For bash users:
sed -i '/ultimate_greet/d' ~/.bashrc

# For zsh users:
sed -i '/ultimate_greet/d' ~/.zshrc
```

## License 📄
MIT License

## Contributing 🤝
Contributions welcome! Please submit a Pull Request.
