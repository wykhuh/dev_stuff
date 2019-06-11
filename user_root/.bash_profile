#=========================
# finder shortcuts
#=========================

#show and hide files
#http://ianlunn.co.uk/articles/quickly-showhide-hidden-files-mac-os-x-mavericks/
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# server shortcut for python3
alias server="python3 -m http.server"

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

alias ga="git add"
alias gaa="git add ."
alias gb="git branch"
alias gco="git checkout"
alias gcm="git commit -m"
alias gca="git commit --amend"
alias gd='git diff'
alias gh='git hist'
alias gmn="git merge --no-ff"
alias gs="git status"
alias gk='gitk --all&'
alias gx='gitx --all'

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
# nvm
#=========================
# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


#=========================
# Miniconda
#=========================

# added by Miniconda3 4.5.12 installer

# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/wyk/miniconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/wyk/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/wyk/miniconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/wyk/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

#=========================
# heroku cli
#=========================


HOMEBREW_PREFIX=$(brew --prefix)
if type brew &>/dev/null; then
  for COMPLETION in "$HOMEBREW_PREFIX"/etc/bash_completion.d/*
  do
    [[ -f $COMPLETION ]] && source "$COMPLETION"
  done
  if [[ -f ${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh ]];
  then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  fi
fi


#=========================
# paths
#=========================

# homebrew
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

# Node Completion
# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}


#use mamp php
export PATH=/Applications/MAMP/bin/php/php5.6.2/bin:$PATH


#path for laravel
export PATH=~/.composer/vendor/bin:$PATH

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)" # load rbenv


# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
# export PATH

# Setting PATH for Python 3.6 downloaded from python.org
# The original version is saved in .bash_profile.pysave
# QGIS relies on python 3.6
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH


export PATH="/usr/local/opt/qt@5.5/bin:$PATH"


# export PKG_CONFIG_PATH="/opt/local/lib/pkgconfig:$PKG_CONFIG_PATH"
# export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# PKG_CONFIG_PATH=/usr/local/opt/imagemagick@6/lib/pkgconfig gem install rmagick


export PATH="/usr/local/opt/gettext/bin:$PATH"


# curl http://data.biostarhandbook.com/install/bash_profile.txt
# Source the settings from .bashrc.
#
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

