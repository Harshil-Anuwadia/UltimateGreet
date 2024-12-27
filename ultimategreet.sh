#!/bin/bash

# Check for the argument passed to the script
if [ "$1" == "-install" ]; then
    # Run the installer script
    bash /usr/bin/ug_installer.sh
elif [ "$1" == "-uninstall" ]; then
    # Run the uninstaller script
    bash /usr/bin/ug_uninstaller.sh
else
    # Default message or help
    echo "Usage: ultimategreet -install | -uninstall"
    echo "  -install    Install the greet script"
    echo "  -uninstall  Uninstall the greet script"
fi
