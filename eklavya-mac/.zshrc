# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pure"

# Uncomment the following line to use case-sensitive completion.
 CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
 DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

source $ZSH/oh-my-zsh.sh

plugins=(fasd git brew alias-tips auto-fu zshdb blackbox branch-manager browse-commit cd-gitroot cdbk zshmarks ztrace zsh-vim-mode zsh-notify fzf-marks  git-it-on git-secret gitignore.plugin going-places grep2awk k noreallyjustfuckingstopalready oh-my-zsh-reminder pantheon-terminal-notify pip-app sysadmin-util tumult zce zsh-async zsh-bd zsh-cmd-architect zsh-colors zsh-completion-generator zsh-directory-history zsh-editing-workbench zsh-functional fuzzy-search-and-edit git-flow git-hubflow deer zsh-history-substring-search git-extras shpec clean-my-mac httpie)
# common-aliases enhancd)

# ENHANCD_FILTER=fzf:peco:gof 
# export ENHANCD_FILTER

# export ZSH=/home/Eklavya/.oh-my-zsh

# source Users/eklavya/antigen.zsh
autoload -Uz cd-gitroot
# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"


export PATH="/Users/eklavya/.cabal/packages/hackage.haskell.org:$PATH"

export PATH="$HOME/Library/Haskell/bin:$PATH"


# export RACKET to path
export PATH="/Applications/Racket v6.8/bin:$PATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh
#
#
# ################ 


# my settings



source ~/.zshenv
## My stuff from the .zshrc_1

source ~/.zsh_my_scripts




## Lazy load ruby env

rbenv(){
eval "$(command rbenv init -)"
rbenv "$@"
}

eval "rbenv global 2.3.3 > ~/.dev/null"



#lcb(){
#eval "lein cljsbuild once frontend-dev"
#eval "lein cljsbuild once electron-dev"
#}

# Source antigen

source /Users/eklavya/antigen.zsh

antigen bundle djui/alias-tips
#antigen bundle soimort/translate-shell
antigen bundle psprint/ztrace
antigen bundle mafredri/zsh-async
antigen bundle https://github.com/robbyrussell/oh-my-zsh.git plugins/sublime
antigen bundle arzzen/calc.plugin.zsh
#antigen bundle b4b4r07/enhancd

antigen apply



#source /Users/eklavya/.antigen/repos/https-COLON--SLASH--SLASH-github.com-SLASH-b4b4r07-SLASH-enhancd.git/init.sh


## For i18n

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


export NVM_DIR="/Users/eklavya/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


#alias ruby="/Users/eklavya/.rbenv/versions/2.3.1/bin/ruby"




export PATH="~/.rbenv:$PATH"


# setting up anaconda
export PATH="/Users/eklavya/anaconda/bin:$PATH"




#export NODE_PATH=/opt/lib/node_modules
export NODE_PATH=$PATH:/Users/eklavya/node_modules
export PATH=$PATH:/usr/local/mysql/support-files/
export PATH=$PATH:/usr/local/mysql/bin/
# mysql works ( even the one in the settings menu ) via
# sudo mysql.server start/stop
## when it doesn't work we use th central commands like 


# This works only from within the pdf2json directory, so no need to include the following path!
#export PATH=$PATH:/Users/eklavya/.nvm/versions/node/v4.4.7/lib/node_modules/pdf2json/

# OPAM configuration
/Users/eklavya/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

eval "opam switch 4.02.3 > ~/.dev/null"
eval "$(opam config env)"


export PATH="$PATH:$HOME/.cargo/bin/"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:$HOME/.local/bin"

# JRUBY
export PATH="$PATH:$HOME/.rbenv/versions/jruby-9.1.6.0/bin/"
# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /Users/eklavya/.nvm/versions/node/v6.10.2/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /Users/eklavya/.nvm/versions/node/v6.10.2/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh



#eval "gvm use go1.6 > ~/.dev/null"
#eval "gvm use go1.8 > ~/.dev/null"

# goo() gvm use go1.6
#goo



#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
#[[ -s "/Users/eklavya/.gvm/scripts/gvm" ]] && source "/Users/eklavya/.gvm/scripts/gvm"


export GOPATH=$HOME/go # don't forget to change your path correctly!
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

#export GOPATH=$GOPATH:~/Projects/Polyglot/TedTalks/goTED

export PATH="/usr/local/opt/llvm/bin:$PATH"
