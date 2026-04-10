#!/bin/bash
set -e
echo "Starting build..."

echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣶⣾⣷⣶⣦⣄⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣠⣾⡇⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀
⢀⣀⣀⣀⣠⣴⣾⣿⣿⠃⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆
⠈⠻⢿⣿⣿⣿⡿⣟⠃⠀⣀⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡧
⠀⠀⠀⠀⠈⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣼⣿⣿⣿⣿⣿⣿⠇
⠀⠀⠀⠀⠀⠀⠀⠈⠙⢻⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠛⡙⠛⢛⡻⠋⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠒⠄⠬⢉⣡⣠⣿⣿⣿⣇⡌⠲⠠⠋⠈⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
echo "Welcome my name is orlo ,I will wave my fin and turn your new setup to something beautiful like me. Let's get started!"
# Main setup begins
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "Installing core CLI tools and utilities..."
brew install nvim yazi mole fastfetch git openssh  python3 node ghostty wget curl htop tmux fzf ripgrep bat ffmpeg jq tree unzip zip fd zoxide lazygit neofetch btop
echo "Build completed successfully! To run mole mo -- yazi (a teminal style finder)"
echo "Build completed successfully! To run mole mo -- yazi (a terminal style finder)"
echo "Installing browsers..."
brew install helium-browser
echo "Installing you the safest  browser I know..."
echo "Installing you a safe cryptocurrency wallet and  a really good local only password manager..."
brew install onekey
brew install --cask keepassxc
echo "All essential dependencies installed successfully."
brew cleanup
echo "System cleanup complete. Your environment is ready!"
echo "Mama always said the sea is a cruel mistress but I will make it a paradise for you, just like me!"
mo clean 
echo "Cleanup completed. Your system is now ready to build the in the terminal"
read -p "Do you want to install LazyVim? (y/n): " install_lazyvim
if [ "$install_lazyvim" = "y" ] || [ "$install_lazyvim" = "Y" ]; then
    if [ ! -d "$HOME/.config/nvim" ]; then
        git clone https://github.com/LazyVim/starter "$HOME/.config/nvim"
        echo "LazyVim installed. Run nvim to complete setup."
    else
        echo "LazyVim already installed."
    fi
else
    echo "Skipping LazyVim installation."
fi
echo "You can now run 'nvim' to start using LazyVim if you chose to install it."
echo "Remember to configure your SSH server if you plan to use SSH features." 
read -p "Do you want to support for AI tools? (y/n): " install_aitools
if [ "$install_aitools" = "y" ] || [ "$install_aitools" = "Y" ]; then
    echo "Installing AI tools..."
    brew install lm-studio ollama 
    echo "AI tools installed. You can now use OpenAI's CLI. Run lms and ollama to use them."
    echo "Being everyone's favourite whale is what I do best, I will now install the best open source model for you to use with LM Studio and Ollama, enjoy!"
    echo "Don't worry even a 2012 MacBook Pro can run it, just give it some time to load the model and you will be good to go! I don't advise it though."
    echo "Down the deep blue sea....... :) "
    lms get Qwen3-VL-4B
    ollama run llama3.2:1b
    echo "Qwen3-VL-4B model installed. You can now use it with LM Studio."
else
    echo "Skipping AI tools installation."
fi
echo "Build process completed. Enjoy your new setup!"
mo clean 
read -p "Do you want to try out your new asistant? (y/n): " try_assistant
if [ "$try_assistant" = "y" ] || [ "$try_assistant" = "Y" ]; then
    read -p " ollama or lms? (o/l): " assistant_choic
    if [ "$assistant_choic" = "o" ] || [ "$assistant_choic" = "O" ]; then
        ollama run llama3.2:1b
    elif [ "$assistant_choic" = "l" ] || [ "$assistant_choic" = "L" ]; then
        lms load Qwen3-VL-4B
        lms chat Qwen3-VL-4B
    else
        echo "Invalid choice. Please select either 'o' for ollama or 'l' for lms."
    fi
    echo "Assistant started. You can now interact with it!"
else 
    echo "Skipping assistant test. You can start it later using the commands provided."
fi
read -p "Do you want to use claude code? (y/n): " install_claude
if [ "$install_claude" = "y" ] || [ "$install_claude" = "Y" ]; then
    echo "Installing Claude Code..."
    brew install claude-code
    echo "Claude Code installed. You can now use it for coding assistance."
    echo "Claude Code is a powerful AI coding assistant that can help you write code faster and more efficiently. Give it a try!"
else
    echo "Skipping Claude Code installation."
fi
brew cleanup
mo clean
echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣶⣾⣷⣶⣦⣄⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣠⣾⡇⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀
⢀⣀⣀⣀⣠⣴⣾⣿⣿⠃⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆
⠈⠻⢿⣿⣿⣿⡿⣟⠃⠀⣀⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡧
⠀⠀⠀⠀⠈⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣼⣿⣿⣿⣿⣿⣿⠇
⠀⠀⠀⠀⠀⠀⠀⠈⠙⢻⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠛⡙⠛⢛⡻⠋⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠒⠄⠬⢉⣡⣠⣿⣿⣿⣇⡌⠲⠠⠋⠈⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
echo "Final cleanup completed. Your system is now optimized and ready to use to develop at speed."
echo ""
echo "Make sure to tell all your friends how much of a help I was,swim away my little fish!"
echo ""
echo "made with love by orlo the whale, the best whale in the sea, I hope you enjoy your new setup and have fun developing with it!"
# If you checked this then you are a real one, I hope you enjoy your new setup and have fun developing with it!
#If you have any issues or need help, feel free to reach out. Happy coding!
