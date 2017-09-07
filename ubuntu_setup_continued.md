## Editors

#### Emacs


```sh

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

```


#### VIM

```
sudo curl -sLf https://spacevim.org/install.sh | bash

```

## exFAT File System
Resource
https://askubuntu.com/questions/750681/gui-tool-for-formating-to-exfat



- This is the command used for installtion of `exFat`
```
sudo apt-get install exfat-utils exfat-fuse


- For `neanderthal`
```
sudo chown -R eklavya:eklavya /media/eklavya/GoFlex/
```
```

## GPU stuff

- Commands to check for `GPU`

Resource
http://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html#ubuntu-installation
http://www.linuxandubuntu.com/home/how-to-install-latest-nvidia-drivers-in-linux
https://askubuntu.com/questions/858030/nvidia-prime-in-nvidia-x-server-settings-in-16-04-1
https://medium.com/@vivek.yadav/deep-learning-setup-for-ubuntu-16-04-tensorflow-1-2-keras-opencv3-python3-cuda8-and-cudnn5-1-324438dd46f0
https://gist.github.com/ksopyla/813a62d6afc4307755e5832a3b62f432
https://www.nvidia.com/en-us/data-center/gpu-accelerated-applications/tensorflow/
https://www.tensorflow.org/install/install_linux



```sh

eklavya@neanderthal:~$ lspci | grep -i nvidia
01:00.0 VGA compatible controller: NVIDIA Corporation GK208 [GeForce GT 730] (rev a1)
01:00.1 Audio device: NVIDIA Corporation GK208 HDMI/DP Audio Controller (rev a1)

```

- NVIDIA graphics
sudo apt install nvidia-prime nvidia-settings  




```sh
cat /proc/driver/nvidia/version

```

- CUDA


https://developer.nvidia.com/cuda-downloads


- Link for neanderthal 

https://developer.nvidia.com/compute/cuda/8.0/Prod2/local_installers/cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64-deb

### Vagrant and VirtualBox

-  Installing these using the `deb` installer

The usual way of installing via the `deb` file raises an error - `dependency error`.

- Moving on to adding the key to ubuntu apt
Resource
https://www.virtualbox.org/wiki/Linux_Downloads
https://www.linuxbabe.com/virtualbox/install-latest-virtualbox-5-1-ubuntu-16-04


```sh
sudo nano /etc/apt/sources.list
## append this line to the above file
# deb http://download.virtualbox.org/virtualbox/debian xenial contrib
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
sudo apt update
sudo apt install virtualbox-5.1
```

install vagrant by simply running 

```sh
sudo dpkg -i vagrant_1.9.8_x86_64.deb 
```


### APPS

- Slack

```
sudo dpkg -i slack-desktop-2.7.1-amd64.deb 
```


### Python environment for spacemacs


Pyenv 

```
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

```



```
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
```


### Powershell

The powershell core based automation and administration is gonna be extremely valuable.

```sh
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -

# Register the Microsoft Ubuntu repository
curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list | sudo tee /etc/apt/sources.list.d/microsoft.list

# Update apt-get
sudo apt-get update

# Install PowerShell
sudo apt-get install -y powershell

# Start PowerShell
powershell
```

### dotNet Core 




```sh
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg

sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg

sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-xenial-prod xenial main" > /etc/apt/sources.list.d/dotnetdev.list'

sudo apt-get update

sudo apt-get install dotnet-sdk-2.0.0




```



## SHELL UTITLITIES

- cmake

```sh
brew install cmake
```

- gitql


```shell
go get -u -d github.com/cloudson/gitql

cd $GOPATH/src/github.com/cloudson/gitql

make

sudo make install

```

- git-extras

```sh
https://github.com/tj/git-extras
```
