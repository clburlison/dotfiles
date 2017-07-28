# Navigation
function ..    ; cd .. ; end
function ...   ; cd ../.. ; end
function ....  ; cd ../../.. ; end
function ..... ; cd ../../../.. ; end


# Utilities
function c        ; pygmentize -O style=monokai -f console256 -g $argv ; end
function grep     ; command grep --color=auto $argv ; end

alias hosts='sudo $EDITOR /etc/hosts'   # yes I occasionally 127.0.0.1 twitter.com ;)
alias ag='ag --follow --hidden'
alias ping='ping -c 3'
alias ImagOptim='/Applications/ImageOptim.app/Contents/MacOS/ImageOptim'

# Networking. IP address, dig, DNS
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias dig="dig +nocmd any +multiline +noall +answer"

# Recursively delete `.DS_Store` files
alias cleanup_dsstore="find . -name '*.DS_Store' -type f -ls -delete"

# Shortcuts
alias ungz="gunzip -k"
alias f="open -a Finder ./"
alias l="ll"
alias g="git"
alias fs="stat -f \"%z bytes\"" # File size
alias e="$VISUAL"
alias vi="vim" # macOS ships with a super old version of vim

# Update Homebrew
alias brew_update="brew -v update; brew upgrade --force-bottle --cleanup; brew cleanup; brew cask cleanup; brew prune; brew doctor"
