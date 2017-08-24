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




- If the following **apt-update** command fails because of error
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

** Or change the brightness of the monitor manually , buttons

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
git config --global color.ui trueThe next step is to take the newly generated SSH key and add it to your Github account. You want to copy and paste the output of the following command and paste it here.

cat ~/.ssh/id_rsa.pub

Once you've done this, you can check and see if it worked:

ssh -T git@github.com

You should get a message like this:

Hi excid3! You've successfully authenticated, but GitHub does not provide shell access.
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

- At this point we've added stuff to the `.bashrc` and avoided messing up `.bash_profile`


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

```
sudo bash Miniconda3-latest-Linux-x86_64.sh 

exec $SHELL
sudo chmod -R 777 ~/miniconda3/

conda install python=3.5

```


#### R 

```
conda install -c r rstudio 
```



#### Julia
```
conda install -c pstey julia 
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


- NeoVim

```

brew install neovim

```

#### Install DEB files

- chrome
- gitkraken
- code

```
sudo dpkg -i gitkraken-amd64.deb google-chrome-stable_current_amd64.deb 
```




