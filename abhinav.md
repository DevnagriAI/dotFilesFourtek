
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



## NEOVIM
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

sudo gem install neovim
gem install neovim



