#!/bin/bash

###############################################################################
# General UI/UX                                                               #
###############################################################################

# Disable menu bar transparency
defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false

# Menu bar: hide the Time Machine, and Bluetooth icons
defaults write com.apple.systemuiserver menuExtras -array "/System/Library/CoreServices/Menu Extras/Bluetooth.menu" "/System/Library/CoreServices/Menu Extras/AirPort.menu" "/System/Library/CoreServices/Menu Extras/Battery.menu" "/System/Library/CoreServices/Menu Extras/Clock.menu" "/System/Library/CoreServices/Menu Extras/VPN.menu"

# Show remaining battery percentage
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# Expanded Save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Expanded Print dialog by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Disable opening and closing window animations
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# Disable Resume system-wide
defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false

# Disable the “reopen windows when logging back in” option
# This works, although the checkbox will still appear to be checked,
# and the command needs to be entered again for every restart.
defaults write com.apple.loginwindow TALLogoutSavesState -bool false
defaults write com.apple.loginwindow LoginwindowLaunchesRelaunchApps -bool false

# Disable disk image verification
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

# Set default applications for specific files via LaunchServices.plist # DOES NOT WORK
# defaults write com.apple.LaunchServices LSHandlers -array-add '{ LSHandlerContentType = "com.apple.property-list"; LSHandlerRoleAll = "com.macromates.textmate"; }'
# defaults write com.apple.LaunchServices LSHandlers -array-add '{ LSHandlerContentType = "public.plain-text"; LSHandlerRoleAll = "com.macromates.textmate"; }'
# defaults write com.apple.LaunchServices LSHandlers -array-add '{ LSHandlerURLScheme = "http"; LSHandlerRoleAll = "com.google.chrome"; }'
# defaults write com.apple.LaunchServices LSHandlers -array-add '{ LSHandlerURLScheme = "https"; LSHandlerRoleAll = "com.google.chrome"; }'
# defaults write com.apple.LaunchServices LSHandlers -array-add '{ LSHandlerContentTag = "pp"; LSHandlerContentTagClass = "public.filename-extension"; LSHandlerRoleAll = "com.macromates.textmate.preview"; }'
# defaults write com.apple.LaunchServices LSHandlers -array-add '{ LSHandlerURLScheme = "rdp"; LSHandlerRoleAll = "com.microsoft.rdc.mac"; }'

###############################################################################
# Screen                                                                      #
###############################################################################

# Enable subpixel font rendering on non-Apple LCDs
defaults write NSGlobalDomain AppleFontSmoothing -int 2

# Enable HiDPI display modes (requires restart)
# Need to try and do this through puppet
# sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true

###############################################################################
# Finder/Dock                                                                 #
###############################################################################

# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Allow quitting Finder via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

# Disable window animations and Get Info animations in Finder
defaults write com.apple.finder DisableAllAnimations -bool true

# Show all filename extensions in Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Show status bar in Finder
defaults write com.apple.finder ShowStatusBar -bool true

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

# Finder: allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Change what appears on desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Make Dock icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

###############################################################################
# iTunes                                                                      #
###############################################################################

# Enable iTunes track notifications in the Dock
defaults write com.apple.dock itunes-notifications -bool true

###############################################################################
# Mail                                                                        #
###############################################################################

# Disable send and reply animations in Mail.app
defaults write com.apple.Mail DisableReplyAnimations -bool true
defaults write com.apple.Mail DisableSendAnimations -bool true

# Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

###############################################################################
# Safari                                                                      #
###############################################################################

# Set Safari’s home page to `about:blank` for faster loading
defaults write com.apple.Safari HomePage -string "about:blank"

# Enable Safari’s debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Enable the Develop menu and the Web Inspector in Safari
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

###############################################################################
# Terminal                                                                    #
###############################################################################

# Only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

# Use my theme by default in Terminal.app
open "$HOME/.dotfiles/Solarized Dark.terminal"

sleep 2 # Wait a bit to make sure the theme is loaded
defaults write com.apple.terminal "Default Window Settings" -string "Solarized Dark"
defaults write com.apple.terminal "Startup Window Settings" -string "Solarized Dark"


###############################################################################
# Misc
###############################################################################

# Prevent Time Machine from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Enable the debug menu in Disk Utility
defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true
defaults write com.apple.DiskUtility advanced-image-options -bool true

# Enable the WebKit Developer Tools in the Mac App Store
defaults write com.apple.appstore WebKitDeveloperExtras -bool true

# Enable Debug Menu in the Mac App Store
defaults write com.apple.appstore ShowDebugMenu -bool true

# Enable Xcode build timing
defaults write com.apple.dt.Xcode ShowBuildOperationDuration -bool true

# Set my account picture
# Need to try and do this through puppet
# sudo cp -f ~/.dotfiles/me.jpg "/Library/User Pictures/clburlison.jpg"
# sudo chmod 444 "/Library/User Pictures/clburlison.jpg"
# sudo dscl . delete /Users/${USER} jpegphoto
# sudo dscl . delete /Users/${USER} Picture
# sudo dscl . create /Users/${USER} Picture "/Library/User Pictures/clburlison.jpg"


###############################################################################
# Install HomeBrew                                                            #
###############################################################################
if ! hash brew >/dev/null 2>&1; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  declare -a arr=("the_silver_searcher" "wget" "curl" "tree" "dfu-programmer" "pv" "awscli" "s3fs" "s3cmd" "mercurial" "youtube-dl" "bfg" "ripgrep")
  for i in "${arr[@]}"
  do
     brew install "$i"
  done
fi

# Quick Look plugins | more info https://github.com/sindresorhus/quick-look-plugins
if ! brew list brew-cask >/dev/null 2>&1; then
  brew tap caskroom/cask
  brew install brew-cask
fi

declare -a arr=("qlcolorcode" "qlstephen" "qlmarkdown" "quicklook-json" "quicklook-csv" "betterzipql" "suspicious-package")
for i in "${arr[@]}"
do
  if ! brew cask list "$i" >/dev/null 2>&1; then
    brew cask install "$i"
  fi
done

###############################################################################
# Kill affected applications                                                  #
###############################################################################
for app in "Dock" "Finder" "Mail" "Safari" "NotificationCenter" "iTunes" "SystemUIServer" "cfprefsd"; do
  echo "Killing $app, do not be alarmed"
  killall "$app" > /dev/null 2>&1
done
