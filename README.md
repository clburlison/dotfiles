# clburlison’s dotfiles

These are my dotfiles.

## Notes

Some things from [Mathias Bynens](https://github.com/mathiasbynens/dotfiles) & [Russel Hancox](https://github.com/russellhancox/dotfiles), & [jzelinskie](https://github.com/jzelinskie/dotfiles/blob/b2d33f8c601d1b7d9cce1df3319561e182251a26/zshrc#L12-L30)

### On macOS

Install oh-my-zsh

     sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

### On Ubuntu

    apt install zsh
    apt install git-core
    apt install wget

    wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

And then you change your shell to zsh

    chsh -s `which zsh`
