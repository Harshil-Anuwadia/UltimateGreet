# 🚀 Ultimate Terminal Greeting

A dynamic terminal greeting script that delivers personalized, time-based motivational messages.

![Version](https://img.shields.io/badge/version-1.0-green.svg)
![License](https://img.shields.io/badge/license-MIT-blue.svg)

## ✨ Current Features

### Time-Based Greetings
- Morning (5 AM - 12 PM): Energetic, motivational messages
- Afternoon (12 PM - 4 PM): Productivity-focused messages
- Evening (4 PM - 8 PM): Reflective, calming messages
- Night (8 PM - 5 AM): Restful, preparatory messages

### Visual Elements
- Animated installation progress bar
- Colored output for different times of day
- Flashing system active notification
- Character-by-character message animation

### Customization
- Personalized name integration
- Support for both bash and zsh shells
- Configurable installation directory
- 16 unique messages per time period

### System Integration
- Automatic shell detection
- Dependency checking (curl)
- Permanent shell configuration
- Clean installation process

## 🛠️ Requirements
- Unix-like OS (Linux/MacOS)
- bash or zsh shell
- curl

## 📥 Installation
```bash
https://github.com/Harshil-Anuwadia/UltimateGreet.git
cd UltimateGreet
chmod +x ug_install.sh
./ug_install.sh
```

## 🐛 Known Issues
1. Shell sourcing may require terminal restart
2. Message animation speed might be slow on some systems
3. Color codes may not work in all terminal emulators

## 🔧 Troubleshooting

### Shell Integration Issues
```bash
# Manual source after installation
source ~/.bashrc  # For bash
source ~/.zshrc   # For zsh
```

### Color Display Problems
```bash
# Check terminal color support
echo $TERM

# Force basic colors
export TERM=xterm-256color
```

## 🤝 Contributing
1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Submit a pull request

## 📜 License
MIT License

---
⭐ Star this repo if you find it useful!
