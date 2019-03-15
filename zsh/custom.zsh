ZSH_THEME=""
#ENABLE_CORRECTION="true"
#DISABLE_UNTRACKED_FILES_DIRTY="true"
#Enable Homebrew Verbose mode cause I hate myself
HOMEBREW_VERBOSE=1

# for tiny-care-terminal
# source https://github.com/notwaldorf/tiny-care-terminal/blob/master/sample.env
export TTC_REPOS="/Users/kayovoldk/code","/Users/kayovoldk/.not-quite-dotfiles"
export TTC_REPOS_DEPTH=5
export TTC_GITBOT='gitlog'
export TTC_WEATHER='Clarksville, TN'
export TTC_SAY_BOX='parrot'
# the secret-keys.zsh file contains these vars:
# export TTC_CONSUMER_KEY="..."
# export TTC_CONSUMER_SECRET="..."
# export TTC_ACCESS_TOKEN="..."
# export TTC_ACCESS_TOKEN_SECRET="..."

#Grab Keys
if [[ -a $HOME/.not-quite-dotfiles/zsh/secret-keys.zsh ]]; then
  source $HOME/.not-quite-dotfiles/zsh/secret-keys.zsh
fi

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
#export EDITOR=emacs

source $ZSH/oh-my-zsh.sh
source $HOME/.not-quite-dotfiles/zsh/prompt
source $HOME/.not-quite-dotfiles/zsh/aliases
#source $HOME/.not-quite-dotfiles/zsh/chrome

#golang
export PATH="$PATH:/usr/local/opt/go/libexec/bin"
#rust language
export PATH="$PATH:$HOME/.cargo/bin:$PATH"
#pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export PATH="$PATH:/usr/local/git/current/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:$HOME/Code/depot_tools"

#source stuff from homebrew function by the amazing alyssais
load_from_brew() {
  . "/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
  . "/usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh"
  . "/usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
}
load_from_brew


# for google cloud sdk
#source $HOME/Code/google-cloud-sdk/path.zsh.inc

export NVM_DIR="/Users/kayovoldk/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

care_bot() {
  node ~/.not-quite-dotfiles/bin/tinycarebot/run.js
}

blerg() {
  Color_Off='\033[0m'       # Text Reset
  Cyan='\033[0;36m'         # Cyan
  echo ""
  echo "$Cyan｡.・゜゜・｡.｡☆*☆｡.｡・゜゜・..・゜゜・｡.｡☆*☆｡.｡・゜゜・.｡$Color_Off"
  echo "$Cyan*☆｡.｡・゜゜・.｡  ☆｡.｡・゜・.. *☆｡.｡・゜゜・.｡  ☆｡.｡・゜$Color_Off"
  echo $(care_bot) | fmt -c -w 42
  echo "$Cyan*☆｡.｡・゜゜・.｡  ☆｡.｡・゜・.. *☆｡.｡・゜゜・.｡  ☆｡.｡・゜$Color_Off"
  echo "$Cyan｡.・゜゜・｡.｡☆*☆｡.｡・゜゜・..・゜゜・｡.｡☆*☆｡.｡・゜゜・.｡$Color_Off"
  echo ""
}

blerg

