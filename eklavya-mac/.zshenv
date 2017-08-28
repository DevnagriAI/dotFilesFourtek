
alias lumo="nvm use lumo > ~/.dev/null && lumo"
alias hyperiana="hy --repl-output-fn=hy.contrib.hy-repr.hy-repr"
alias cd='cd -P'
#jlua = rembulan 

alias zygo="zygo -quiet"
export Path=/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin:$PATH
export PATH=~/.local/bin:$PATH
export EVENT_NOKQUEUE=1
alias bpy=bpython
export SBT_OPTS="-XX:+CMSClassUnloadingEnabled"
alias dev_appserver.py="/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin/dev_appserver.py"
alias pdf2json.js="node /Users/eklavya/node_modules/pdf2json/pdf2json.js"
#export GOPATH=$Home/Projects/Polyglot/Flow:$GOPATH
export PATH=$PATH:$HOME/.config/yarn/global/node_modules/bin

export ANDROID_HOME=/usr/local/share/android-sdk

export PATH=$ANDROID_HOME:$PATH

alias terminal="open -a "Terminal" ."


# converts ocaml code into reason
alias mlre="refmt --parse ml --print re --interface false"
# converts reason code into ocaml
alias reml="refmt --parse re --print ml --interface false"

alias gogb="/Users/eklavya/.gvm/pkgsets/go1.8/global/bin/gb"


alias pyrepl="ptpython"
alias ipyrepl="ptipython"
alias boot-new="boot -d boot/new new -t app -n"


# JRUBY
#alias jruby="$HOME/.rbenv/versions/jruby-9.1.6.0/bin/jruby"
# JRUBY
#alias jirb="$HOME/.rbenv/versions/jruby-9.1.6.0/bin/jirb"

#alias jpry="jruby -S pry"


alias groovysh="groovysh -Djava.awt.headless=true"
alias gvsr="groovyserver"
alias gvcl="groovyclient"

#alias fregeg="$HOME/.frege/bin/frege-grepl"
alias fregei="$HOME/.frege/bin/frege-repl"
alias fregec="java -Xss1m -jar $HOME/.frege/lib/fregec.jar -target 1.7 "
# for this to work the frege.jar must be in the directory as well.
alias fregeb_in_dir="java -Xss1m -cp build:fregec.jar "


#export Path=~/Projects/bitworld/FREGE/frege/lib/:$PATH
#alias fregei="$HOME/Projects/bitworld/FREGE/frege/bin/frege-repl"
#alias fregec="java -Xss1m -jar $HOME/Projects/bitworld/FREGE/frege/lib/fregec-3.24-7.100.jar -target 1.7 "
#alias fregeb="java -Xss1m -cp build:fregec.jar"

#export PATH="$PATH:/Applications/JuliaPro-0.5.2.1.app/Contents/Resources/julia/Contents/Resources/julia/bin"
#alias julia="/Applications/JuliaPro-0.5.2.1.app/Contents/Resources/julia/Contents/Resources/julia/bin/julia"
#export JULIA_EXE=julia
alias sage="/Applications/SageMath/sage"
# unable to set the default browser for sage to Safari!
#SAGE_BROWSER='open -a Safari'
alias jcj="jupyter console --kernel julia-0.5"
alias wls_f="wolframscript -file"
alias wlk_f="/Applications/Mathematica.app/Contents/MacOS/WolframKernel -script"


alias pip3="~/anaconda/bin/pip"
alias wipe="sudo rm -rf"
alias lf="rlwrap lein figwheel"
alias lc="lein clean"
alias git=hub


alias emacs_terminal="/usr/local/Cellar/emacs/25.1/bin/emacs-25.1 -nw"
#env HOME="~/spacemacs/ emacs"




alias python_server="python3 -m http.server"


alias jq="jupyter qtconsole"
alias jc="jupyter console"
alias jn="jupyter notebook"

alias lco="lein cljsbuild once"

alias mkdir="mkdir -p"

alias cppcompile='c++ -std=c++11 -stdlib=libc++'

alias php5="/Applications/MAMP/bin/php/php5.6.10/bin/php"

alias php7="/Applications/MAMP/bin/php/php7.0.8/bin/php"

alias dirac="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --remote-debugging-port=9222 --no-first-run --user-data-dir=.text-dirac-chrome-profile"

alias refresh="source /Users/eklavya/.zshrc"
#alias racket="/Applications/Racket\ v6.5/bin/racket"
#alias scribble="/Applications/Racket\ v6.5/bin/scribble"

# setting up the PATH for sails 
alias sails="/Users/eklavya/node_modules/sails/bin/sails.js"


alias mysql_load="sudo launchctl load -F /Library/LaunchDaemons/com.oracle.oss.mysql.mysqld.plist"

alias mysql_unload="sudo launchctl unload -F /Library/LaunchDaemons/com.oracle.oss.mysql.mysqld.plist"

alias mysql_start="sudo mysql.server start"

alias mysql_stop="sudo mysql.server stop"

# This is the MAMP mysql database
alias msql="/Applications/MAMP/Library/bin/mysql -uroot -p"
alias vim="nvim"


alias redis_load="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.redis.plist"
alias redis_unload="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.redis.plist"
alias mongo_load="sudo mongod --dbpath=/data"


#alias electron="/Applications/Electron.app/Contents/MacOS/Electron"




alias python2="/usr/local/bin/python"
alias python3="$HOME/anaconda/bin/python3.5"
alias pip2="/usr/local/bin/pip"
alias rmds="find . -type f -name '*.DS_Store' -ls -delete"



# This works only from within the pdf2json directory, so no need to include the following path!
#export PATH=$PATH:/Users/eklavya/.nvm/versions/node/v4.4.7/lib/node_modules/pdf2json/


