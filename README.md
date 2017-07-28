# clburlison’s dotfiles

These are my dotfiles.

I now use [Mackup](https://github.com/lra/mackup) to store my configurations between machines including these dotfiles. I will continue to keep this repo updated for reference purposes in case anyone wants to take a look.


# System Setup Steps (this section needs some love)
* Install Dropbox
* `cd ~/Dropbox/src/mine/dotfiles/`
* `open Solarized\ Dark.terminal`
* `mackup restore`

And then you change your shell to zsh or fish

Need to make sure fish is in [`/etc/shells`](https://github.com/fish-shell/fish-shell/issues/989#issuecomment-23999992). 
```bash
chsh -s `which zsh`
chsh -s /usr/local/bin/fish
```

Eventually `osx_defaults.sh` will get replaced with chef or puppet config....some day.

# AutoPkg
_Again this should be in chef...some day._
* Install [Autopkg](https://github.com/autopkg/autopkg/releases)
* 


# Install Git + YubiKey + gpg
* Install [https://gpgtools.org/](https://gpgtools.org/) _This should be autopkg'ed_


# Brew stuff
Most of this is pretty much from [homebrew-bundle](https://github.com/Homebrew/homebrew-bundle) but stored here so I don't have to look it up.

### Install
To install all packages in the Brewfile. Before you run this command you'll want to sign into the Mac AppStore. Or you can run the install command, fail on the mas, then do a `mas signin appleid@example.com password` and re-run the command below.
```bash
brew bundle
```

### Dump
To backup current brew packages
```bash
brew bundle dump --force
```

### Cleanup
This will remove all packages not in the Brewfile
```bash
brew bundle cleanup --force
```

### Remove all Brew packages
This is rarely needed but is useful nevertheless
```bash
brew remove --force --ignore-dependencies $(brew list)
```
