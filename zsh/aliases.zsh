# OS X has custom implementations of core utilities, which normally 
#    don't support the range of options that GNU versions do. If the 
#    homebrew package coreutils is installed, alias the osx commands 
#    to their coreutils gnu counterparts
#
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if (( $+commands[gls] ))
then
  $DEBUG && echo Detected Homebrew coreutils, patching ls with gls
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la="gls -A --color"
fi

# Manually set HOME, because 'sudo -s' resets it on most modern
# boxes via 'Defaults env_reset' in /etc/sudoers 
#
# Note: This will not auto-update, which is good (or root would
#       own all your files)
alias sume="sudo /bin/zsh -c 'HOME=/home/hamiltont; /bin/zsh'"

# Stop zsh from correcting bazaar
alias bzr="nocorrect bzr"
