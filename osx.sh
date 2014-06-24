#!/usr/bin/env bash

# mostly barrowed from here https://github.com/mathiasbynens/dotfiles/blob/master/.osx
# was going to use boxen but it ended up being a pain...defaults was easier.

# Disable menu bar transparency
defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false

# Menu bar: hide the Time Machine, and Bluetooth icons
for domain in ~/Library/Preferences/ByHost/com.apple.systemuiserver.*; do
	defaults write "${domain}" dontAutoLoad -array \
		"/System/Library/CoreServices/Menu Extras/Bluetooth.menu" \
		
done
defaults write com.apple.systemuiserver menuExtras -array \
	"/System/Library/CoreServices/Menu Extras/AirPort.menu" \
	"/System/Library/CoreServices/Menu Extras/Battery.menu" \
	"/System/Library/CoreServices/Menu Extras/Clock.menu" \
	"/System/Library/CoreServices/Menu Extras/Vpn.menu" \
	"/System/Library/CoreServices/Menu Extras/TimeMachine.menu" \
	"/System/Library/CoreServices/Menu Extras/User.menu" \
	"/System/Library/CoreServices/Menu Extras/Volume.menu"


# Show remaining battery percentage
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# Always show scrollbars
# defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# Disable opening and closing window animations
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# Disable Resume system-wide
defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false

# Disable the “reopen windows when logging back in” option
# This works, although the checkbox will still appear to be checked,
# and the command needs to be entered again for every restart.
defaults write com.apple.loginwindow TALLogoutSavesState -bool false
defaults write com.apple.loginwindow LoginwindowLaunchesRelaunchApps -bool false

# Enable subpixel font rendering on non-Apple LCDs
defaults write NSGlobalDomain AppleFontSmoothing -int 2

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Allow quitting Finder via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

# Disable window animations and Get Info animations in Finder
defaults write com.apple.finder DisableAllAnimations -bool true

# Show all filename extensions in Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Show status bar in Finder
defaults write com.apple.finder ShowStatusBar -bool true

# Disable disk image verification
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

# Automatically open a new Finder window when a volume is mounted
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes (icon, list, columns, coverflow): `icnv`, `Nlsv', `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Diable Dashboard
defaults write com.apple.dashboard mcx-disabled -boolean YES

# Set $HOME as the default location for new Finder windows
# For other paths, use `PfLo` and `file:///full/path/here/`
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Enable snap-to-grid for desktop icons
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy kind" ~/Library/Preferences/com.apple.finder.plist

# Disable the warning before emptying the Trash
# defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Empty Trash securely by default
# defaults write com.apple.finder EmptyTrashSecurely -bool true

# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Disable Apple Notification Center
sudo defaults write /System/Library/LaunchAgents/com.apple.notificationcenterui KeepAlive -bool false; sudo -k

# Enable iTunes track notifications in the Dock
# defaults write com.apple.dock itunes-notifications -bool true

# Enable Safari’s debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Disable send and reply animations in Mail.app
defaults write com.apple.Mail DisableReplyAnimations -bool true
defaults write com.apple.Mail DisableSendAnimations -bool true

# Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

# Set default applications for specific files via LaunchServices.plist # DOES NOT WORK
# defaults write com.apple.LaunchServices LSHandlers -array-add '{ LSHandlerContentType = "com.apple.property-list"; LSHandlerRoleAll = "com.macromates.textmate"; }'
# defaults write com.apple.LaunchServices LSHandlers -array-add '{ LSHandlerContentType = "public.plain-text"; LSHandlerRoleAll = "com.macromates.textmate"; }'
# defaults write com.apple.LaunchServices LSHandlers -array-add '{ LSHandlerURLScheme = "http"; LSHandlerRoleAll = "com.google.chrome"; }'
# defaults write com.apple.LaunchServices LSHandlers -array-add '{ LSHandlerURLScheme = "https"; LSHandlerRoleAll = "com.google.chrome"; }'
# defaults write com.apple.LaunchServices LSHandlers -array-add '{ LSHandlerContentTag = "pp"; LSHandlerContentTagClass = "public.filename-extension"; LSHandlerRoleAll = "com.macromates.textmate.preview"; }'
# defaults write com.apple.LaunchServices LSHandlers -array-add '{ LSHandlerURLScheme = "rdp"; LSHandlerRoleAll = "com.microsoft.rdc.mac"; }'

###############################################################################
# Trackpad, mouse, keyboard, Bluetooth accessories, and input                 #
###############################################################################

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Trackpad: map bottom right corner to right-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true


# Kill affected applications
for app in Safari Finder Dock Mail SystemUIServer NotificationCenter; do killall "$app" > /dev/null 2>&1; done
echo "Done. Note that some of these changes require a logout/restart to take effect."

# disable powernap issue with encrypted disk | more info http://derflounder.wordpress.com/2014/02/12/power-nap-power-management-settings-and-filevault-2/
# sudo pmset -a darkwakes 0
# sudo pmset -a standby 0
# sudo pmset -a standbydelay 0
# sudo pmset -a destroyfvkeyonstandby 1 hibernatemode 25


# Quick Look plugins | more info https://github.com/sindresorhus/quick-look-plugins
brew tap caskroom/cask
brew install brew-cask
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json quicklook-csv betterzipql suspicious-package