https://www.tecmint.com/ubuntu-14-04-installation-guide/

#############

N, nodejs, lumo, planck

############
Rbenv
Ruby, rails
Rake

###########

https://gorails.com/setup/ubuntu/16.04

Linuxbrew
Brightness

###
Docker ce
Docker compose


sudo apt install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
    
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt update && sudo apt install docker-ce

sudo usermod -aG docker $USER

sudo curl -o /usr/local/bin/docker-compose -L "https://github.com/docker/compose/releases/download/1.15.0/docker-compose-$(uname -s)-$(uname -m)"

sudo chmod +x /usr/local/bin/docker-compose


####

gimme

brew install gimme

gimme stable

####


libappindicator error

sudo apt-get install libappindicator1 libindicator7
####

Vscode

Neovim
Emacs
http://ubuntuhandbook.org/index.php/2016/09/install-gnu-emacs-25-1-in-ubuntu-16-04/

sudo add-apt-repository ppa:kelleyk/emacs
sudo apt-get update
sudo apt-get install emacs25

https://askubuntu.com/questions/851633/emacs-25-on-ubuntu-16-10
##

Anaconda-py3
  168  sudo chmod -R 777 ~/miniconda3/
  169  conda install python=3.5
  170  sudo conda install python=3.5
  171  conda install python=3.5
  172  history




## Jabba, zulu java
  128  brew install golang
  129  go --version
  130  curl -sL https://github.com/shyiko/jabba/raw/master/install.sh | bash && . ~/.jabba/jabba.sh
  131  cat .bash_profile 
  132  jabba install zulu@1.8.144
  133  java -version
  134  gedit .bash_profile 
  135  history



Boot 
Lein
Jruby
Rustup
Go


####
install SBT and then direcly install ammonite

rm -rf /usr/local/bin/amm && sudo curl -L -o /usr/local/bin/amm https://git.io/v5Tct && sudo chmod +x /usr/local/bin/amm && amm


or brew info ammonite-repl
Scala, ammonite 
####

Vagrant 


###
https://tecadmin.net/install-oracle-virtualbox-on-ubuntu/#
Virtualbox, Ubuntu 16.04 image
https://www.howtoforge.com/tutorial/ubuntu-vagrant-install-and-getting-started/

###
Ansible 
Bazel 
Gitkraken


###
Dotfile-manager - dotbot!
https://github.com/anishathalye/dotbot


 159  mkdir .dotbot
  160  la
  161  ll
  162  cd .dotbot/
  163  git init # initialize repository if needed
  164  git submodule add https://github.com/anishathalye/dotbot
  165  cp dotbot/tools/git-submodule/install .
  166  touch install.conf.yaml

####

Sublime 
Intellij 

Dropbox - unable to install

Lua, luajit

Golang based sync for. All - rclone

Haskell, ghc, eta

- Chrome, chromium

sudo apt install chromium-browser

Xonsh

.Net core2
Mono, ClojureCLR 

https://www.microsoft.com/net/core#linuxubuntu

http://flatpak.org/getting.html
http://www.monodevelop.com/download/linux/



R, via conda
conda install r-essentials
conda install -c r rstudio 




Julia
conda install -c pstey julia 


Crystal 

Kawa scheme 
Chez scheme
Racket 
Micro
SVN script to copy a certain folder. 
Skype 
Franz chats

Mathematica
Matlab

Slack - done
Nylas - done

###
Ktorrent - https://webtorrent.io/intro

https://github.com/anacrolix/torrent

https://github.com/sergiotapia/magnetissimo
https://github.com/Novik/ruTorrent


###

Devdocs
Cerebro

Workspaces

Hyper - done

Buttercup/dashlane - done

Soube/electron music player or just vlc



PostgreSQL
OrientDB
Datomic
minio
camlistore



Taskwarrior
Pomodoro 
Grafana
Influxdb
Lihaoyi, fluent 
Groovy
Kotlin 


Brave browser


tagspace
https://github.com/EragonJ/Kaku  - done

https://youtplayer.github.io/
https://getkap.co/
https://nteract.io/
https://medleytext.net/
https://www.reqview.com/
http://epictask.run/#downloads
https://github.com/egoist/devdocs-desktop
ledger
https://www.meistertask.com/?eidv=v1&utm_expid=.-OAwR5WXSjupSZ8SQwPkdw.1&utm_referrer=https%3A%2F%2Felectron.atom.io%2Fapps%2F
https://github.com/amitmerchant1990/pomolectron

http://codestoryapp.com/downloads/

https://nteract.io/desktop

http://sciencefair-app.com/

https://www.devrant.io/

https://devrantron.firebaseapp.com/

https://tun-application.github.io/

Snap



Sql Explorer 


####

conda 

conda install python=3.5

install hub for github

homesick dotfile manager



Kaku-1.9.0-ia32.tar.gz                              
hyper_1.3.3.deb
Miniconda3-latest-Linux-x86_64.sh                   jetbrains-toolbox-1.4.2492.tar.gz
NylasMail.deb                                       
skypeforlinux-64.deb
Sqlectron_1.24.0_amd64.deb                          slack-desktop-2.7.1-amd64.deb
Ubuntu_16.04.2-VB-64bit.7z                          sublime_text_3_build_3126_x64.tar.bz2
buttercup_0.18.2_amd64.deb                          
vagrant_1.9.7_x86_64.deb
code_1.15.1-1502903936_amd64.deb                    virtualbox-5.1_5.1.26-117224-Ubuntu-xenial_i386.deb
gitkraken-amd64.deb                                 zulu8.23.0.3-jdk8.0.144-linux_x64.tar.gz
google-chrome-stable_current_amd64.deb