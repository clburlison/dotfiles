# clburlison’s dotfiles

These are my dotfiles.

I now use [Mackup](https://github.com/lra/mackup) to store my configurations between machines including these dotfiles. I will continue to keep this repo updated for reference purposes in case anyone wants to take a look.


# Mackup usage steps
These are mostly for Clayton's memory...
* Install Dropbox
* Install python3 (currently Mackup has a py2 incompatibility issue).
* `pip3 install --upgrade mackup --user`
* `~/Library/Python/3.6/bin/mackup restore`

And then you change your shell to zsh or fish

		chsh -s `which zsh`
		chsh -s /usr/local/bin/fish

Eventually `osx_defaults.sh` will get replaced with chef or puppet config....some day.


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
