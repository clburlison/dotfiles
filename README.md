# clburlison’s dotfiles

## Installation

### Using Git and the bootstrap script

You can clone the repository wherever you want. (I like to keep it in `~/src/mine/dotfiles`.) The bootstrap script will pull in the latest version and copy the files to your home folder. Make sure any configuration files that you do not want public on the internet are controlled under your .gitignore for this repo. 

```bash
mkdir -p ~/src/mine/dotfiles && git clone https://github.com/clburlison/dotfiles.git ~/src/mine/dotfiles && cd dotfiles && ./bootstrap.sh
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
./bootstrap.sh
```

## Notes

This was forked from [Mathias Bynens](https://github.com/mathiasbynens/dotfiles).

If modifying ``.gitconfig`` make sure and run puppet afterwards. Puppet is used to config git name and email.