## UBUNTU SETUP - FOURTEK

#### Setup and Drive Partition Tutorials
https://www.vembu.com/blog/use-lvm-ubuntu-16-04/

http://www.tutonics.com/2012/11/ubuntu-lvm-guide-part-1.html

https://www.digitalocean.com/community/tutorials/how-to-use-lvm-to-manage-storage-devices-on-ubuntu-16-04

https://askubuntu.com/questions/3596/what-is-lvm-and-what-is-it-used-for

https://www.hiroom2.com/2016/05/19/ubuntu-16-04-extend-and-reduce-lvm-root-filesystem/

https://www.digitalocean.com/community/tutorials/an-introduction-to-lvm-concepts-terminology-and-operations#

https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-16-04


#### After a fresh Ubuntu install


- approve the `report to the...` first popup error

- login to github and go download the dot files folder 

- create workspaces - settings -> appearance-> workspaces


- If the update fails because of **libappstream**
 
```sh
sudo apt-get purge libappstream3
```

- Install the **libappindicator**


```sh
sudo apt-get install libappindicator1 libindicator7
```



- If the following **apt-update** command fails because of error  (mal-installed chrome etc)
```sh
sudo apt-get update
```

Then run this python file

```sh
sudo python3 apt-remove-duplicate-source-entries.py

```


- Brightness controller 

reference 
http://ubuntuhandbook.org/index.php/2017/05/install-brightness-controller-utility-in-ubuntu-16-04-higher/

** Or change the brightness of the monitor manually , buttons to level **30**



```sh

sudo add-apt-repository ppa:apandada1/brightness-controller
sudo apt-get update
sudo apt-get install brightness-controller
```

- to check system config

```sh
 sudo apt-get install inxi

```


#### Install Ruby 2.3.3

```sh
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
```

Then refresh the shell

```sh

exec $SHELL

```

- Install `rbenv`

```sh
cd
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

```

- Install `ruby-build`

```sh
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

```

```sh
rbenv install 2.3.3

rbenv global 2.3.3

```

#### LINUXBREW

```sh
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"

```

Then add `linuxbrew` to path using these commands

```sh
echo 'export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"' >>~/.bashrc
echo 'export MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"' >>~/.bashrc
echo 'export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"' >>~/.bashrc


exec $SHELL

```


#### GIT configuration


Git has already been installed now we only need to configure it.

```sh
git config --global color.ui true
git config --global user.name "Abhinav Sharma"
git config --global user.email "abhi18av@gmail.com"
git config -l
```

The next step is to take the newly generated SSH key and add it to your Github account. You want to copy and paste the output of the following command and paste it here.

Generate ssh key

```
cat ~/.ssh/id_rsa.pub
```
Once you've done this, you can check and see if it worked:

```sh
ssh -T git@github.com
```

You should get a message like this:

Hi excid3! You've successfully authenticated, but GitHub does not provide shell access.

```sh
git config --global user.name "Abhinav Sharma"
git config --global user.email "abhi18av@gmail.com"
```


- This command will ask for a pass-phrase , don't enter anything - press enter.
 
```
ssh-keygen -t rsa -b 4096 -C "abhi18av@gmail.com"
```



The next step is to take the newly generated SSH key and add it to your Github account. You want to copy and paste the output of the following command and paste on https://github.com/settings/keys

```
cat ~/.ssh/id_rsa.pub
```
Once you've done this, you can check and see if it worked:

```
ssh -T git@github.com
```

You should get a message like this:

```
Hi excid3! You've successfully authenticated, but GitHub does not provide shell access.
```


#### GO-lang installtion

```
brew install gimme
gimme stable
```

- At this point we've added stuff to the `.bashrc` and avoided messing up 
`.bash_profile`


#### Docker

```sh
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -



sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt update && sudo apt install docker-ce

```


- Docker Compose

```sh
sudo curl -o /usr/local/bin/docker-compose -L "https://github.com/docker/compose/releases/download/1.15.0/docker-compose-$(uname -s)-$(uname -m)"

sudo chmod +x /usr/local/bin/docker-compose
```



#### Java and JVM Languages

- java

```sh

curl -sL https://github.com/shyiko/jabba/raw/master/install.sh | bash && . ~/.jabba/jabba.sh

jabba install zulu@1.8.144

```

- Scala

```
brew install ammonite-repl

brew install sbt
```


- Clojure

```
brew install leiningen

lein repl

brew install boot-clj

boot repl
```

- jRuby

```
rbenv install --list

rbenv install jruby-9.1.12.0

```

#### Copy the `INSTALLERS` folder from the pen drive to `~/Desktop/dotFiles/`


And move inside that folder using 

```sh
cd Desktop/dotFiles/installers/

```

** TODO 
Automate the download of latest binaries 

```
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh

```

#### ANACONDA


- The current chmod creates a warning with `homesick`

`warning: Insecure world writable dir /home/eklavya/miniconda3/bin in PATH, mode 040777`

Reference
https://stackoverflow.com/questions/5380671/getting-the-warning-insecure-world-writable-dir-home-chance-in-path-mode-04

Correction: `sudo chmod -R go-w miniconda3/`

```
sudo bash Miniconda3-latest-Linux-x86_64.sh 

exec $SHELL
sudo chmod -R 777 ~/miniconda3/

conda install python=3.5
conda config --add channels conda-forge

```

- Xonsh shell

```
conda install xonsh

pip install xonsh-apt-tabcomplete xonsh-autoxsh xonsh-docker-tabcomplete xonsh-scrapy-tabcomplete xonsh-vox-tabcomplete exofrills xonda xontrib-avox xontrib-z xontrib-powerline xontrib-prompt-vi-mode xonsh-click-tabcomplete xontrib-fzf-widgets urwid lazyasd
```

#### R 

```
conda install -c r rstudio 
```



#### Julia
```
conda install -c pstey julia 
```


#### NodeJS

The env management for nodejs is done via `n`

```
curl -L https://git.io/n-install | bash

source /home/eklavya/.bashrc

n lts

```


#### Shell Utils

- install git-lfs
```

curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get install git-lfs
git lfs install


```


#### Editors

- VsCode

```
sudo dpkg -i code_1.15.1-1502903936_amd64.deb
```

- Sublime

```
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt-get update

sudo apt-get install sublime-text

```

- Emacs

Reference 
http://ubuntuhandbook.org/index.php/2016/09/install-gnu-emacs-25-1-in-ubuntu-16-04/

```sh
sudo add-apt-repository ppa:kelleyk/emacs
sudo apt-get update
sudo apt-get install emacs25
```

- NeoVim

```
# perhaps prefer the apt-get channel for pre-built binary
brew install neovim

```

#### Databases

- OSQuery

```sh

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1484120AC4E9F8A1A577AEEE97A80C63C9D8B80B
sudo add-apt-repository "deb [arch=amd64] https://osquery-packages.s3.amazonaws.com/xenial xenial main"
sudo apt-get update
sudo apt-get install osquery
```



If we get `Could not get lock /var/lib/dpkg/lock - open (11: Resource temporarily unavailable)` error

Reference
https://www.tecmint.com/fix-unable-to-lock-the-administration-directory-var-lib-dpkg-lock/




- PostGreSQL

Reference
https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-16-04


```
#brew install postgresql

sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install postgresql-common
sudo apt-get install postgresql-9.5 libpq-dev
sudo -u postgres createuser eklavya -s

#sudo -u postgres psql
#postgres=# \password eklavya

```

- OrientDB
```
brew install orientdb 

```

- Datomic
- Camlistore
- Minio


#### DotFile manager

- homesick

```sh
gem install homesick
```

- dotBot

```
mkdir ~/.dotfiles
cd ~/.dotfiles # replace with the path to your dotfiles
git init # initialize repository if needed
git submodule add https://github.com/anishathalye/dotbot
cp dotbot/tools/git-submodule/install .
touch install.conf.yaml
```


#### Install DEB files
- hyper

```
wget https://latest.hyper.is/latest/deb

sudo dpkg -i hyper_1.3.3.deb 

```


- nylas mail

```sh
sudo dpkg -i NylasMail.deb 
```

- chrome
- gitkraken
- buttercup

```
sudo dpkg -i gitkraken-amd64.deb google-chrome-stable_current_amd64.deb buttercup_0.18.2_amd64.deb 
```


- chromium

```
sudo apt-get install chromium-browser
```

#### Finishing touches

- Remove the icons from sidebar
	- amazon
	- libreoffice apps


#### Shell Utils

- tree 

```
sudo apt install tree
```



#### TODO

- automated git sign-in from command line
```
git config credential.helper store
```

- `pt` - The Platinum searcher 

```
go get -u github.com/monochromegane/the_platinum_searcher/...
```


- `rg` RipGrep



- `exa` - replacement for `ls` in rust

```
#brew install exa

mv _binary_installers/exa-macos-x86_64 /usr/local/bin/exa
```


