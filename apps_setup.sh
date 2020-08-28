# Apps
apps=(
  google-chrome
  visual-studio-code
  teamviewer
  spotify
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps with Cask..."
brew tap teamookla/speedtest
brew update
brew install speedtest --force

brew cask install --appdir="/Applications" ${apps[@]}

brew cleanup


echo "installing mas to install apps from the App Store"
brew install mas

# Signin
# TODO: Put all email/user info in separate file to retrieve
mas signin francescobenintende@icloud.com

mas_apps=(
    "Honey for Safari"
    "Caffeinated"
    "BetterSnapTool"
    "Xcode"
    "Pages"
    "WhatsApp Desktop"
)

for mas_app in $mas_apps
do
    mas lucky $mas_app
done

echo "Please install code in your PATH before continuing"
read -p "Press [Enter] key after this..."

# Setup VSCODE Extension
./install_vs_extensions.sh

# Set user settings
cat ./settings.json > /Users/francescobenintende/Library/Application\ Support/Code/User/settings.json

# Disable backswipe in Chrome
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool false

# TODO: disable chrome's warn before quitting

# Adding Non-Apple Apps to Dock
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>Applications/Google Chrome.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>Applications/WhatsApp.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>Applications/Spotify.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>Applications/Visual Studio Code.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"

for app in "Dock" "Finder"; do
  killall "${app}" > /dev/null 2>&1
done
