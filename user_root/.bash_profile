#=========================
# finder shortcuts
#=========================

#show and hide files
#http://ianlunn.co.uk/articles/quickly-showhide-hidden-files-mac-os-x-mavericks/
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# server shortcut
alias server="python -m http.server" # python3
alias server="python -m SimpleHTTPServer" # python2

# mkdir and cd shortcut
# http://unix.stackexchange.com/questions/9123/is-there-a-one-liner-that-allows-me-to-create-a-directory-and-move-into-it-at-th
mkcd () {
  case "$1" in /*) :;; *) set -- "./$1";; esac
  mkdir -p "$1" && cd "$1"
}

#=========================
# git
#=========================

# git shortcuts
# http://githowto.com/aliases
# https://gist.github.com/mathiasverraes/1337397
alias gs="git status"
alias gcm="git commit -m"
alias gca="git commit --amend"
alias gco="git checkout"
alias gd='git diff'
alias ga="git add"
alias gaa="git add ."
alias gh='git hist'
alias gb="git branch"
alias gk='gitk --all&'
alias gx='gitx --all'
alias gmn="git merge --no-ff"


#git autocompletesource 
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# show git branch in prompt
# https://www.snip2code.com/Snippet/65705/Show-Current-Branch-in-Terminal
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}
export PS1="\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

alias got='git '
alias get='git '

#=========================
# misc
#=========================

# Node Completion
# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}

# homebrew
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

#use mamp php
export PATH=/Applications/MAMP/bin/php/php5.6.2/bin:$PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

#path for laravel
export PATH=~/.composer/vendor/bin:$PATH

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)" # load rbenv

# added by Anaconda3 5.0.0 installer
export PATH="/Users/wyk/anaconda3/bin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# homebrew
export PATH=/usr/local/bin:$PATH

# openssl
export PATH="/usr/local/opt/openssl/bin:$PATH"

# for dotnet run
export ASPNETCORE_ENVIRONMENT=Development

# added by Anaconda3 4.4.0 installer
export PATH="/Users/<computer_username>/anaconda/bin:$PATH"

# opencv3
export PATH="/usr/local/opt/opencv3/bin:$PATH"

# python virtualenv
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export WORKON_HOME=~/.pythonvirtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# imagemagick
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
