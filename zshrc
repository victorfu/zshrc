DEFAULT_USER="victorfu"

# Path to your oh-my-zsh installation.
export ZSH=/Users/victorfu/.oh-my-zsh

# ZSH_THEME="solarized_powerline"
ZSH_THEME="powerlevel10k/powerlevel10k"

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

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=cyan"

plugins=(
  docker
  git
  brew
  sudo
  virtualenv
  extract
  zsh-syntax-highlighting
  history-substring-search
  zsh-autosuggestions
)

# User configuration
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_162.jdk/Contents/Home"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export ANDROID_NDK_HOME="$HOME/Library/Android/android-ndk-r10e"
export SOFTWARE_HOME="$HOME/Softwares"
export MAVEN_HOME="$SOFTWARE_HOME/apache-maven-3.6.0"
export GOPATH="$HOME/goprojects"
export JADX_HOME="$HOME/Softwares/jadx"

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:/usr/local/opt/apr/bin"
export PATH="$PATH:/usr/local/opt/mysql@5.7/bin"
export PATH="$PATH:$HOME/flutter/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_NDK_HOME"
export PATH="$PATH:$MAVEN_HOME/bin"
export PATH="$PATH:$SOFTWARE_HOME/bin"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:$JADX_HOME/bin"
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/sbin:$PATH"

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR='vim'

# alias
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias ls="ls -hGF"
alias ll="ls -AlF"
alias cp="cp -iv"
alias mv="mv -iv"
alias mkdir="mkdir -pv"
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'
alias gopath="cd $GOPATH"
alias c="clear"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh"  ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion"  ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

[[ -f ~/.victor.zsh ]] && source ~/.victor.zsh

# Always work in a tmux session if tmux is installed
if which tmux 2>&1 >/dev/null; then
  if [ $TERM != "screen-256color" ] && [  $TERM != "screen" ]; then
    tmux attach -t hack || tmux new -s hack; exit
  fi
fi

