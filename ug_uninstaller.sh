#!/bin/bash

# Function to display an animated, visually attractive banner with a premium touch
display_banner() {
    clear
    echo -e "\e[1;35m"
    echo "===================================================="
    echo "       WELCOME TO THE ULTIMATE GREET UNINSTALLER     "
    echo "===================================================="
    echo -e "\e[0m"
    echo -e "\e[1;32m   Prepare to remove UltimateGreet from your system \e[0m"
    echo -e "\e[1;33m         We're making the process seamless and smooth \e[0m"
    echo -e "\e[1;36m     Let’s begin the uninstallation... Please wait! \e[0m"
    sleep 1.5
}

# Function to display a success message with a cool effect
success_message() {
    echo -e "\e[1;32m[✓] $1\e[0m"
}

# Function to display an error message with a cool effect
error_message() {
    echo -e "\e[1;31m[✘] $1\e[0m"
}

# Function to remove a line from a file safely
remove_line_from_file() {
    local file=$1
    local pattern=$2
    if [ -f "$file" ]; then
        # Check if the pattern exists in the file
        if grep -q "$pattern" "$file"; then
            sed -i "/$pattern/d" "$file"
            success_message "Removed configuration from $file."
        else
            echo -e "\e[1;33m[!] No configuration found in $file.\e[0m"
        fi
    else
        echo -e "\e[1;33m[!] Configuration file $file does not exist.\e[0m"
    fi
}

# Function to display the uninstallation progress
show_progress() {
    echo -n -e "\e[1;36m["
    for i in {1..50}
    do
        sleep 0.1
        echo -n "#"
    done
    echo -e "\e[0m\e[1;32m] Uninstallation Complete!\e[0m"
    sleep 1
}

# Display the banner
display_banner

# Define paths
SCRIPT_PATH="$HOME/.ultimate_greet/ultimate_greet.sh"
BASHRC="$HOME/.bashrc"
ZSHRC="$HOME/.zshrc"

# Ask for user confirmation
read -p "Are you sure you want to uninstall UltimateGreet? (y/n): " confirm
if [[ "$confirm" != "y" ]]; then
    echo -e "\e[1;33mUninstallation aborted.\e[0m"
    exit 0
fi

# Step 1: Delete the script file
if [ -f "$SCRIPT_PATH" ]; then
    rm -f "$SCRIPT_PATH"
    success_message "Removed script file: $SCRIPT_PATH"
else
    echo -e "\e[1;33m[!] Script file not found: $SCRIPT_PATH\e[0m"
fi

# Step 2: Remove configuration from shell files
remove_line_from_file "$BASHRC" "ultimate_greet.sh"
remove_line_from_file "$ZSHRC" "ultimate_greet.sh"

# Step 3: Reload shell configuration (if applicable)
read -p "Do you want to reload your shell configuration now? (y/n): " reload
if [[ "$reload" == "y" ]]; then
    current_shell=$(ps -p $$ -o comm=)  # Get the current shell from the running process

    if [[ "$current_shell" == "zsh" ]]; then
        # Zsh is being used
        if [ -f "$ZSHRC" ]; then
            source "$ZSHRC"
            success_message "Reloaded .zshrc."
        else
            echo -e "\e[1;33m[!] No .zshrc file found.\e[0m"
        fi
    elif [[ "$current_shell" == "bash" ]]; then
        # Bash is being used
        if [ -f "$BASHRC" ]; then
            source "$BASHRC"
            success_message "Reloaded .bashrc."
        else
            echo -e "\e[1;33m[!] No .bashrc file found.\e[0m"
        fi
    else
        echo -e "\e[1;33m[!] Unsupported shell detected, unable to reload configuration.\e[0m"
    fi
fi

# Show uninstallation progress
show_progress

# Final confirmation
success_message "UltimateGreet has been successfully uninstalled."
echo -e "\e[1;34m===================================================="
echo -e "\e[1;36m            UNINSTALLATION COMPLETE!               "
echo -e "\e[1;34m====================================================\e[0m"
