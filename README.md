# 🚀 Ultimate Terminal Greeting v2.0

Transform your terminal into an inspiring command center! This advanced greeting script delivers dynamic, time-based motivational messages with stunning animations and customizable themes.

![GitHub stars](https://img.shields.io/github/stars/yourusername/ultimate-terminal-greeting?style=social)
![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Version](https://img.shields.io/badge/version-2.0-green.svg)

## ✨ Features

### Core Features
- 🌅 Time-aware greetings with dynamic color schemes
- 🎨 Stunning ASCII art animations
- 💪 100+ motivational messages
- 🌈 Terminal-safe color transitions
- ⚡ Performance optimized (~0.1s load time)
- 🔄 Auto-update system

### Advanced Features
- 🎵 Optional ASCII sound visualizer
- 🌍 Multiple language support
- 🎮 Interactive mode with daily challenges
- 📊 Productivity tracking
- 🎨 Theme engine with community themes
- 🔌 Plugin system for extensions

## 🛠️ Requirements

- Unix-like OS (Linux/MacOS)
- bash (4.0+) or zsh
- curl
- Optional: lolcat, figlet for enhanced visuals

## 📥 Quick Installation

```bash
# One-line installer (Recommended)
curl -fsSL https://raw.githubusercontent.com/yourusername/ultimate-terminal-greeting/main/install.sh | bash

# OR Manual installation
git clone https://github.com/yourusername/ultimate-terminal-greeting.git
cd ultimate-terminal-greeting
chmod +x install.sh
./install.sh
```

## 🔧 Advanced Installation Guide

### Step 1: Configuration
```bash
# Generate config file
./install.sh --config

# Enable all features
./install.sh --full

# Minimal installation
./install.sh --minimal
```

### Step 2: Theme Selection
```bash
# List available themes
./install.sh --list-themes

# Install specific theme
./install.sh --theme cyberpunk
```

### Step 3: Plugin Installation
```bash
# List available plugins
./install.sh --list-plugins

# Install productivity tracker
./install.sh --plugin productivity
```

## 🐛 Common Issues & Fixes

### Invalid Color Codes
```bash
# Fix color issues
./repair.sh --fix-colors

# Reset to default theme
./repair.sh --reset-theme
```

### Slow Loading Times
```bash
# Optimize cache
./repair.sh --optimize

# Clear message cache
./repair.sh --clear-cache
```

### Shell Integration Issues
```bash
# Repair shell integration
./repair.sh --fix-shell

# Force reinstall
./repair.sh --force
```

## 🎨 Customization

### Theme Engine
```bash
# Create custom theme
mkdir -p ~/.ultimate_greet/themes/mytheme
cp templates/theme.json ~/.ultimate_greet/themes/mytheme/

# Apply theme
./configure.sh --apply-theme mytheme
```

### Message Customization
```bash
# Add custom messages
echo "Your custom message" >> ~/.ultimate_greet/messages/custom.txt

# Enable custom messages
./configure.sh --enable-custom
```

## 🤝 Contributing

### Before Contributing:
1. 🌟 Star this repository
2. 🔄 Fork the repository
3. 📖 Read our [Contributing Guidelines](CONTRIBUTING.md)

### Development Setup
```bash
# Install development dependencies
./install.sh --dev

# Run tests
./test.sh

# Submit PR
1. Create feature branch
2. Make changes
3. Run tests
4. Submit PR
```

### Feature Requests
- Open an issue with tag [FEATURE]
- Use the feature request template
- Include sample code if possible

## 🎁 Support the Project

If you find this project useful:
- ⭐ Star the repository
- 🔄 Fork it and contribute
- 🐛 Report bugs
- 📝 Improve documentation
- 🎨 Submit themes

## 📜 License

MIT License - See [LICENSE](LICENSE) for details

## 🏆 Contributors

<a href="https://github.com/Harshil-Anuwadia/ultimate-terminal-greeting/graphs/contributors">
  <img src="https://contributors-img.web.app/image?repo=yourusername/ultimate-terminal-greeting" />
</a>

---

Made with ❤️ by the Ultimate Terminal Greeting Team
