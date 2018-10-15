DEFAULT_USER="victorfu"

# Path to your oh-my-zsh installation.
export ZSH=/Users/victorfu/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="solarized_powerline"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="false"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
  docker
  git
  brew
  sudo
  virtualenv
  extract
  zsh-syntax-highlighting
  history-substring-search
  zsh-vim-mode
  zsh-autosuggestions
)

# User configuration
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_162.jdk/Contents/Home"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export ANDROID_NDK_HOME="$HOME/Library/Android/android-ndk-r10e"
export SOFTWARE_HOME="$HOME/Softwares"
export MAVEN_HOME="$SOFTWARE_HOME/apache-maven-3.3.3"
export GEM_HOME="$HOME/.gem"
export GOROOT="/usr/local/Cellar/go/1.11/libexec"
export GOPATH="$HOME/goprojects"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
export JADX_HOME="$HOME/Softwares/jadx"

# python virtualenvs
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=`which python3`
# export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
# export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
source /usr/local/bin/virtualenvwrapper.sh

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin"
export PATH="$PATH:/usr/local/opt/go/libexec/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_NDK_HOME"
export PATH="$PATH:$MAVEN_HOME/bin"
export PATH="$PATH:$SOFTWARE_HOME/bin"
export PATH="$PATH:$GEM_HOME/bin"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:/usr/local/opt/openssl@1.1/bin"
export PATH="$PATH:/usr/local/opt/apr/bin"
export PATH="$PATH:$JADX_HOME/bin"

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR='vim'

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# alias
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias ls="ls -hGF"
alias ll="ls -AlF"
alias cp="cp -iv"
alias mv="mv -iv"
alias mkdir="mkdir -pv"
alias .2="cd ../../"
alias .3="cd ../../../"
alias .4="cd ../../../../"
alias .5="cd ../../../../../"
alias .6="cd ../../../../../../"
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'
alias gopath="cd $GOPATH"
alias c="clear"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh"  ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion"  ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=cyan"
