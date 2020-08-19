### macOS settings script ###

# Show ~/Library
chflags nohidden ~/Library

# # # # # # # # # # # # # # # TERMINAL # # # # # # # # # # # # # # # 


# Enabling UTF-8 ONLY in Terminal.app and setting the Pro theme by default
defaults write com.apple.Terminal "Default Window Settings" -string "Pro"
defaults write com.apple.Terminal "Startup Window Settings" -string "Pro"


# # # # # # # # # # # # # # # GENERAL # # # # # # # # # # # # # # # 


# System Preferences > General > Appearance > Dark
defaults write -globalDomain AppleInterfaceStyle Dark

# Check for software updates daily
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Fix blurry fonts on lower resolution monitor
defaults -currentHost write -globalDomain AppleFontSmoothing -int 2

# Prevent from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Prevent Photos from opening automatically when devices are plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

# Completely Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

# Battery percentage
defaults write com.apple.menuextra.battery ShowPercent YES

# Clock display
defaults write com.apple.menuextra.clock DateFormat -string "EEE d MMM  HH:mm:ss"

# Show volume in menu bar
defaults write com.apple.systemuiserver menuExtras -array-add "/System/Library/CoreServices/Menu Extras/Volume.menu"

# Show bluetooth in menu bar
defaults write com.apple.systemuiserver menuExtras -array-add "/System/Library/CoreServices/Menu Extras/Bluetooth.menu"

# Remove Siri from menu bar
defaults write com.apple.Siri StatusMenuVisible -bool false

# # # # # # # # # # # # # # # TEXTEDIT # # # # # # # # # # # # # # # 


# Use plain text mode for new documents
defaults write com.apple.TextEdit RichText -int 0

# Open and save files as UTF-8 encoding
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4


# # # # # # # # # # # # # # # SAFARI # # # # # # # # # # # # # # # 


# Don't open safe files
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Show favourites bar
defaults write com.apple.Safari ShowFavoritesBar -bool true

# Enable develop menu
defaults write com.apple.Safari IncludeDevelopMenu -bool true

# Use `~/Downloads/Incomplete` to store incomplete downloads
defaults write org.m0k.transmission UseIncompleteDownloadFolder -bool true
defaults write org.m0k.transmission IncompleteDownloadFolder -string "${HOME}/Downloads/Incomplete"


# # # # # # # # # # # # # # # FINDER # # # # # # # # # # # # # # # 


# Finder > General > Show Connected Servers
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true

# Show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Set current folder to default search
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Set list view by default
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Keep folders on top
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Show full path
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES

# Finder: allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Show recent tags false
defaults write com.apple.finder ShowRecentTags -boolean false


# # # # # # # # # # # # # # # KEYBOARD # # # # # # # # # # # # # # # 

# Disabling press-and-hold for keys in favor of a key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1

# Set a shorter Delay until key repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 12

# Disable automatic capitalisation
defaults write -g NSAutomaticCapitalizationEnabled -bool false

# Disable smart dashes
defaults write -g NSAutomaticDashSubstitutionEnabled -bool false

# Disable smart quotes
defaults write -g NSAutomaticQuoteSubstitutionEnabled -bool false



# # # # # # # # # # # # # # # DOCK # # # # # # # # # # # # # # # 


# System Preferences > Dock > Automatically hide and show the Dock:
defaults write com.apple.dock autohide -bool true

# System Preferences > Dock > Show recent applications in dock
defaults write com.apple.dock show-recents -bool false

# System Preferences > Dock > Size:
defaults write com.apple.dock tilesize -int 70

# System Preferences > Dock > Magnification:
defaults write com.apple.dock magnification -bool true

# System Preferences > Dock > Size (magnified):
defaults write com.apple.dock largesize -int 95

# System Preferences > Dock > Minimize windows into application icon
defaults write com.apple.dock minimize-to-application -bool true

# System Preferences > Dock > Show indicators for open applications
defaults write com.apple.dock show-process-indicators -bool true

# Remove all default icons from dock 
defaults delete com.apple.dock persistent-apps  
defaults delete com.apple.dock persistent-others

# Add default Apps 
# TODO: remove francescobenintende and use variables
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/System/Applications/Safari.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>" 
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/System/Applications/Mail.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>" 
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/System/Applications/Calendar.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>" 
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/System/Applications/Notes.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>" 
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/System/Applications/Stocks.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>" 
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/System/Applications/Photos.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>" 
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/System/Applications/FindMy.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>" 
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/System/Applications/Messages.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>" 
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/System/Applications/FaceTime.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>" 
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/System/Applications/Utilities/Terminal.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>" 
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/System/Applications/TV.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>" 


# Add Download and Documents as persistent-others   
defaults write com.apple.dock persistent-others -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Users/francescobenintende/Downloads</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>" 
defaults write com.apple.dock persistent-others -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Users/francescobenintende/Documents</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>" 


# # # # # # # # # # # # # # # TRACKPAD # # # # # # # # # # # # # # # 


# System Preferences > Trackpad > More Gestures > App Exposé
defaults write com.apple.dock showAppExposeGestureEnabled -bool true

# Change trackpad speed
defaults write NSGlobalDomain com.apple.trackpad.scaling 2

# Silent clicking
defaults write com.apple.AppleMultitouchTrackpad ActuationStrength -int 0

# Haptic feedback
defaults write com.apple.AppleMultitouchTrackpad FirstClickThreshold -int 0
defaults write com.apple.AppleMultitouchTrackpad SecondClickThreshold -int 1

# Turn on force click
defaults read NSGlobalDomain com.apple.trackpad.forceClick


# # # # # # # # # # # # # # # DESKTOP # # # # # # # # # # # # # # # 


# Snap to grid
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

# Spacing 80
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:gridSpacing 65" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:gridSpacing 65" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:gridSpacing 65" ~/Library/Preferences/com.apple.finder.plist

# Icon size
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:iconSize 80" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:iconSize 80" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:iconSize 80" ~/Library/Preferences/com.apple.finder.plist


# # # # # # # # # # # # # # # MISSION CONTROL # # # # # # # # # # # # # # # 


# System Preferences > Mission Controll > Automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Enable mission control to goup windows by app
defaults write com.apple.dock "expose-group-apps" -bool true


# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Kill affected apps
for app in "Dock" "Finder"; do
  killall "${app}" > /dev/null 2>&1
done

# Done
echo "All gucci 👨🏻‍💻. Note that some of these changes require a logout/restart to take effect.\n"