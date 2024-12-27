#!/bin/bash

# Function to display an animated, visually attractive banner with a premium touch
show_banner() {
    clear
    echo -e "\e[1;35m"
    echo "==============================================="
    echo "   WELCOME TO THE ULTIMATE GREETING INSTALLER  "
    echo "==============================================="
    echo -e "\e[0m"
    echo -e "\e[1;32m      Get ready to experience the ultimate  \e[0m"
    echo -e "\e[1;33m          personalized terminal greetings!   \e[0m"
    echo -e "\e[1;36m      This is your first step towards a more  \e[0m"
    echo -e "\e[1;34m   powerful, inspired, and energized terminal. \e[0m"
    echo -e "\e[1;37m          Let's begin the installation...    \e[0m"
    sleep 1.5
}

# Function to display a smooth installation progress bar with cool effects
show_progress() {
    echo -e "\e[1;33mStarting the installation...\e[0m"
    echo -n -e "\e[1;36m["
    for i in {1..50}
    do
        sleep 0.1
        echo -n "#"
    done
    echo -e "\e[0m\e[1;32m] Installation Complete!\e[0m"
    sleep 1
}

# Check for required dependencies (if any)
check_dependencies() {
    echo -e "\e[1;34mChecking system requirements...\e[0m"
    sleep 1
    if ! command -v curl &> /dev/null; then
        echo -e "\e[1;31mError: curl is not installed. Please install it to proceed.\e[0m"
        exit 1
    fi
    echo -e "\e[1;32mSystem check passed! All dependencies are in place.\e[0m"
    sleep 1
}

# Function to prompt user inputs
prompt_user_inputs() {
    echo -e "\e[1;34mLet's set up your personalized greeting experience!\e[0m"
    read -p "Enter your name (e.g., Harshil): " name
    read -p "Which shell do you use? (bash/zsh/other): " shell_type

    # Validate the shell type input
    if [[ "$shell_type" != "bash" && "$shell_type" != "zsh" ]]; then
        echo -e "\e[1;31mUnsupported shell type. Exiting...\e[0m"
        exit 1
    fi

    install_dir="$HOME/.ultimate_greet"
    echo -e "\e[1;34mThe greeting script will be installed to $install_dir\e[0m"
    sleep 1
}

# Function to install the script and set it up
install_script() {
    mkdir -p "$install_dir"
    cat << 'EOF' > "$install_dir/ultimate_greet.sh"
#!/bin/bash

# Get the current hour
hour=$(date +"%H")

# Personalized greeting
personalized_message="You’re unstoppable, $name. Keep dominating the day!"

# Determine the greeting message, color for random message, and additional random messages based on the time of day
if [ $hour -ge 5 ] && [ $hour -lt 12 ]; then
    greeting="Good Morning, Operative $name... The mission begins now!"
    greeting_color="\e[1;32m"  # Green for morning
    random_color="\e[1;35m"     # Purple for random morning messages
    # Random morning messages
    messages=("Rise and shine, your destiny awaits!" "Time to conquer the day, $name!" "You're a force of nature this morning!" "Morning energy is at max, let’s go!"
              "The sun is up, and so are you!" "Today’s victories start with you, $name!" "Let's make this morning legendary!" "Seize the day, Operative!"
              "The early bird catches the worm, $name!" "Your energy is unstoppable today!" "The morning is yours, $name!" "Wake up and make magic happen!"
              "Another beautiful morning, $name!" "Morning is the time to set your intentions!" "Your potential is limitless today!" "Today is a brand new start, $name!")
elif [ $hour -ge 12 ] && [ $hour -lt 16 ]; then
    greeting="Good Afternoon, Operative $name... Let's stay sharp!"
    greeting_color="\e[1;33m"  # Yellow for afternoon
    random_color="\e[1;36m"    # Cyan for random afternoon messages
    # Random afternoon messages
    messages=("You’re on fire today, $name!" "Keep the grind strong, the day is yours!" "You’ve got this, $name. Keep moving!" "Afternoon hustle mode: Activated!"
              "The afternoon is when winners shine!" "You're absolutely crushing it, $name!" "Keep pushing, the goal is close!" "The mission is halfway complete!"
              "Your afternoon focus is unmatched!" "Afternoon energy is at full throttle!" "Stay sharp, $name. The day isn't over!" "You've already done great, now finish strong!"
              "Momentum is on your side, $name!" "The afternoon is yours to dominate!" "Victory is already in your grasp, $name!" "You’re on a roll, don’t stop now!")
elif [ $hour -ge 16 ] && [ $hour -lt 20 ]; then
    greeting="Good Evening, Operative $name... Relax and reflect."
    greeting_color="\e[1;34m"  # Blue for evening
    random_color="\e[1;33m"    # Yellow for random evening messages
    # Random evening messages
    messages=("Mission accomplished, now enjoy the evening." "You crushed today’s goals. Time to chill." "Great work today, now time to recharge." "Reflect on your victories, tomorrow’s another adventure."
              "The evening is a reward for your hard work." "Now is the time to relax and prepare for tomorrow!" "Reflect on the day's triumphs, $name!" "Evenings are for reflection and relaxation."
              "You've earned this rest, $name. Great job!" "The evening breeze feels sweeter after a productive day." "Time to unwind and reset for tomorrow, $name!" "The night approaches, but you’ve conquered the day."
              "Evening’s the perfect time to relax and recharge." "Today was yours, now enjoy your well-earned evening!" "The evening brings peace after a powerful day!" "Time to rejuvenate, tomorrow will be even better!")
else
    greeting="Good Night, Operative $name... Prepare for tomorrow’s triumphs."
    greeting_color="\e[1;35m"  # Purple for night
    random_color="\e[1;31m"    # Red for random night messages
    # Random night messages
    messages=("Rest up, tomorrow is a fresh start." "Sleep tight, tomorrow’s challenges await!" "Night mode: Recharge for success." "Sleep well, $name. Big wins tomorrow!"
              "Tomorrow holds even greater victories, $name!" "Recharge your energy for tomorrow's mission." "Sleep like the champion you are!" "Dream big, $name. Tomorrow is yours!"
              "Rest, you’ll need your strength for tomorrow!" "Night mode: Activated. Success is just a sleep away." "The night is for renewal, $name." "Tomorrow, you rise again, $name!"
              "Night is the perfect time to reset for the challenges ahead." "Great things are coming tomorrow, but rest now!" "Prepare for a new day, $name, your journey continues!" "Tomorrow’s victories begin with today’s rest.")
fi

# Select a random message from the list
random_message=${messages[$((RANDOM % ${#messages[@]}))]}

# Cool effects for the first line "SYSTEM ACTIVE"
echo -e "\e[1;36mSYSTEM ACTIVE...\e[5m\e[1;37m\c"  # Flashing effect for "SYSTEM ACTIVE"
sleep 0.5
echo -e "\e[0m"  # Reset the flashing effect

# Second line with the personalized greeting message
echo -e "$greeting_color\e[1m\e[4m[+] $greeting\e[0m"

# Third line with the random personalized message
echo -n -e "\e[1m[+] "  # Flashing effect + bold for [+]
for (( i=0; i<${#random_message}; i++ )); do
    echo -n -e "${random_color}${random_message:$i:1}"
    sleep 0.1  # Increased sleep for better rendering
done
echo -e "\e[0m"  # Reset the effects
EOF

    chmod +x "$install_dir/ultimate_greet.sh"
    echo -e "\e[1;32mScript installed successfully!\e[0m"
    sleep 1
}

# Set up the greeting script to run every time the terminal starts
setup_terminal_integration() {
    echo -e "\e[1;33mConfiguring your terminal to use your personalized greeting...\e[0m"
    if [ "$shell_type" == "bash" ]; then
        echo "source $install_dir/ultimate_greet.sh" >> "$HOME/.bashrc"
    elif [ "$shell_type" == "zsh" ]; then
        echo "source $install_dir/ultimate_greet.sh" >> "$HOME/.zshrc"
    fi
    source "$HOME/.bashrc"  # Or source .zshrc for zsh
    echo -e "\e[1;32mTerminal configured! Your premium greeting awaits...\e[0m"
}

# Main execution
show_banner
check_dependencies
prompt_user_inputs
show_progress
install_script
setup_terminal_integration
echo -e "\e[1;32mInstallation complete! Enjoy your premium greeting experience!\e[0m"
