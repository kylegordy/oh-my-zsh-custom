# --------------------------------------------------
# Oh My ZHS Custom Commands
# --------------------------------------------------

COMPLETION_WAITING_DOTS="true"

# --------------------------------------------------
# Aliases
# --------------------------------------------------

# Sites Folder
alias sites=~/sites

# Spotify
alias spotify="osascript ~/code/SpotifyControl/SpotifyControl.scpt"

# Empty the Trash on all mounted volumes and the main HDD
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; rm -rfv ~/.Trash"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Hide/show all hidden files
alias show-h="defaults write com.apple.finder AppleShowAllFiles true && killall Finder"
alias hide-h="defaults write com.apple.finder AppleShowAllFiles false && killall Finder"

# Copy lorem ipsum
alias lorem-ipsum="echo Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean dapibus quis libero id mollis. Proin ultricies sit amet dui eu facilisis. Ut est odio, commodo ut volutpat sed, posuere vitae sapien. Morbi aliquet orci quis sem laoreet sodales. Donec a ultrices nisi. Proin ut purus malesuada, pellentesque lorem nec, rutrum augue. Nam congue interdum tortor id aliquet. Maecenas accumsan, neque eget dignissim consectetur, metus justo aliquam tellus, ac viverra nisl nisl et quam. Aenean at elit eu dui bibendum auctor. Quisque condimentum risus malesuada turpis interdum, nec mattis erat pellentesque. Phasellus orci diam, vulputate ut lectus eu, sollicitudin tincidunt nibh. Fusce eu libero pulvinar, dictum diam at, rutrum sapien. Integer eleifend, leo nec venenatis porttitor, massa nulla sagittis ante, ut accumsan nisl mauris ut est. Nulla facilisi. | pbcopy"

# Start Simple Python Server
alias simple-server="python -m SimpleHTTPServer"

# --------------------------------------------------
# RVM
# --------------------------------------------------

# init rvm
source ~/.rvm/scripts/rvm

# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin

# --------------------------------------------------
# AMPPS
# --------------------------------------------------

# Allows MySQL dump to work with AMPPS
PATH="$PATH:/Applications/AMPPS/mysql/bin"

# Make Drush use AMPPS's PHP instead of the systems
export DRUSH_PHP='/Applications/AMPPS/php/bin/php'