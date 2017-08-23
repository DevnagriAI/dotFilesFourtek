sudo apt-get update
sudo dpkg -i skypeforlinux-64.deb 

####
sudo dpkg -i teamviewer_12.0.76279_i386.deb 


sudo apt-get install -f


sudo dpkg -i teamviewer_12.0.76279_i386.deb 
#####


## UNDERSTAND HOW NVIDIA GRAPHICS AND UBUNTU DRIVERS ARE INSTALLED

sudo add-apt-repository ppa:graphics-drivers/ppa && sudo apt update
sudo ubuntu-drivers list
sudo apt-fet uninstall nvidia-375

dpkg -l | grep -i nvidia



sudo apt-get remove --purge nvidia-*


sudo ubuntu-drivers list
sudo nvidia-uninstall
sudo apt-get purge nvidia-current
sudo ubuntu-drivers list
sudo nvidia-uninstall
sudo apt-get purge nvidia-current

###
lspci -v

egrep -i " connected|card detect|primary dev" /var/log/Xorg.0.log

[    20.873] (II) intel(0): Output LVDS1 connected
nvidia-smi -a
lspci -vnnn | perl -lne 'print if /^\d+\:.+(\[\S+\:\S+\])/' | grep VGA
$ glxinfo|egrep "OpenGL vendor|OpenGL renderer*"
$ optirun glxinfo|egrep "OpenGL vendor|OpenGL renderer"
nvidia-settings
sudo apt install nvidia-settings
sudo apt-get install mesa-utils
glxgears
sudo nvidia-uninstall

sudo apt-get remove --purge nvidia-*



sudo apt-get install ubuntu-desktop



sudo rm /etc/X11/xorg.conf

sudo apt-get install linux-source
sudo apt-get install linux-headers-3.5.0-17-generic


sudo apt-get remove nvidia-current
sudo apt autoremove
sudo ubuntu-drivers list
sudo apt-get update


####

# ABHINAV



vi .bash_profile 
vi .bashrc 
vi .profile 
vi .bash_profile 
vi .bashrc
## Brightness controller
sudo apt-get install brightness-controller



sudo apt-get purge libappstream3
cd
sudo apt-get update
sudo apt-get -y install docker-ce
docker --version
sudo curl -o /usr/local/bin/docker-compose -L "https://github.com/docker/compose/releases/download/1.15.0/docker-compose-$(uname -s)-$(uname -m)"


sudo pip3 install xonsh-apt-tabcomplete xonsh-autoxsh xonsh-docker-tabcomplete xonsh-scrapy-tabcomplete xonsh-vox-tabcomplete exofrills xonda xontrib-avox xontrib-z xontrib-powerline xontrib-prompt-vi-mode xonsh-click-tabcomplete xontrib-fzf-widgets

sudo pip3 install lazyasd
sudo pip3 install urwid
sudo pip3 install pygments


## ANACONDA
cd Desktop && wget http://repo.continuum.io/archive/Anaconda3-4.4.0-Linux-x86_64.sh

wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh

bash Miniconda3-latest-Linux-x86_64.sh 

vim ~/.bash_profile 

nano ~/.bash_profile 

conda info matplotlib

conda install xonsh
conda config --add channels conda-forge

conda install xonsh

xonsh

brew install golang
curl -sL https://github.com/shyiko/jabba/raw/master/install.sh | bash && . ~/.jabba/jabba.sh

jabba -version
which jabba


jabba ls-remote
jabba install zulu@1.8.144
java -version

curl -L https://git.io/n-install | bash


cd miniconda3/bin/

~/miniconda3/bin/pip install xonsh-apt-tabcomplete xonsh-autoxsh xonsh-docker-tabcomplete xonsh-scrapy-tabcomplete xonsh-vox-tabcomplete exofrills xonda xontrib-avox xontrib-z xontrib-powerline xontrib-prompt-vi-mode xonsh-click-tabcomplete xontrib-fzf-widgets urwid lazyasd


cd Desktop && wget https://latest.hyper.is/latest/deb

curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
ls
rm -rf nvim.appimage 
brew install neovim
neovim
nvim
mkdir -p $HOME/.config

cd .config/
mkdir nvim
cd nvim/
touch init.vim

nvim init.vim 

history | grep 'neovim'

pip3 install neovim
gem install neovim
sudo gem install neovim
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd .rbenv/
cd
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
ls
nvim 
nvim
ruby install -l
ruenv install -l
rbenv install -l
rbenv -version
rbenv --help
rbenv whihc
rbenv which
rbenv versions
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install -l
rbenv install 2.3.4
sudo rbenv install 2.3.4
rbenv install 2.3.4

sudo gem install neovim
gem install neovim



mv lein /bin/
sudo mv lein /bin/
sudo bash -c "cd /usr/local/bin && curl -fsSLo boot https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh && chmod 755 boot"
jabba use zulu@1.8.144
rbenv install -l
rbenv versions
wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
chmod a+x /bin/lein
ls
boot repl
nvim .bash_profile 
jabba --version
java -version
jabba use zulu@1.8.144
java -version
brew info readline
node --version
npm --version
java --version
java -version
lein repl
boot repl
jabba use zulu@1.8.144
lein repl
ruby
rbenv install 2.3.3
