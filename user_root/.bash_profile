
# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"


# nvm
export NVM_DIR="/Users/<computer_username>/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# show and hide invisible files
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# git shortcuts
# http://githowto.com/aliases
# https://gist.github.com/mathiasverraes/1337397
alias gs="git status"
alias gc="git commit"
alias gcm="git commit -m"
alias gca="git commit --amend"
alias gco="git checkout"
alias ga="git add"
alias gaa="git add ."
alias gl="git lola"
alias gh="git lol"
alias gb="git branch"
alias gmn="git merge --no-ff"

# git autocomplete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# show git branch in prompt
# https://www.snip2code.com/Snippet/65705/Show-Current-Branch-in-Terminal
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}
export PS1="\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# homebrew
export PATH=/usr/local/bin:$PATH

# openssl
export PATH="/usr/local/opt/openssl/bin:$PATH"

# mkdir and cd shortcut
# http://unix.stackexchange.com/questions/9123/is-there-a-one-liner-that-allows-me-to-create-a-directory-and-move-into-it-at-th
mkcd () {
  case "$1" in /*) :;; *) set -- "./$1";; esac
  mkdir -p "$1" && cd "$1"
}

# for dotnet run
export ASPNETCORE_ENVIRONMENT=Development

alias server="python -m SimpleHTTPServer"

# added by Anaconda3 4.4.0 installer
# export PATH="/Users/<computer_username>/anaconda/bin:$PATH"
# export PATH="/usr/local/opt/opencv3/bin:$PATH"

# python virtualenv
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export WORKON_HOME=~/.pythonvirtualenvs
source /usr/local/bin/virtualenvwrapper.sh
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
