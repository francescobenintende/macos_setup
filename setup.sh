# Setup script for new MacOS machine
# Three steps: macOS settings, git and applications install

# Part 1 - macOS setting
echo "1/4: Running macOS settings script\n"
./macos_setup.sh
echo "macOS setup completed\n"

# Part 2 - Configuring Terminal
echo "2/4: Configuring Terminal\n"
./terminal_setup.sh
echo "Terminal setup completed\n"

# Part 3 - ZSH Setup
echo "3/4: Settings ZSH up\n"
./zsh_setup.sh
echo "ZSH setup completed\n"

# Part 4 - Installing basic user apps
echo "4/4: Installing user apps\n"
./apps_setup.sh
echo "Apps setup completed\n"

# ---------------------------------------------------------

killall Finder Dock SystemUIServer

echo "All done! See you at the next format/setup!\n"
