## Yarn

```sh

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn


```

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
```

- For `neanderthal`
```
sudo chown -R eklavya:eklavya /media/eklavya/GoFlex/
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


- Pyenv 

```
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

```

```
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
```
- pyenv-virtualenv

```
git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv

echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc

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
brew install cmake

go get -u -d github.com/cloudson/gitql

cd $GOPATH/src/github.com/cloudson/gitql

export DYLD_LIBRARY_PATH="${GOPATH}/src/github.com/cloudson/gitql/libgit2/install/lib:${DYLD_LIBRARY_PATH}"

make

sudo make install

```

- `textql` 

```
go get -u github.com/dinedal/textql/...


```

- `hub` Install hub for github

```sh
brew install hub
```


## Install Font Hack

- hack

```
sudo apt-get install fonts-hack-ttf
```


## Postman
Resources

https://blog.bluematador.com/posts/postman-how-to-install-on-ubuntu-1604/

```sh
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
sudo tar -xzf postman.tar.gz -C /opt
rm postman.tar.gz
sudo ln -s /opt/Postman/Postman /usr/bin/postman
```

## Browser drivers

- Gecko


https://github.com/mozilla/geckodriver/releases

https://sites.google.com/a/chromium.org/chromedriver/downloads


## flatpack

```
sudo add-apt-repository ppa:alexlarsson/flatpak

sudo apt update

sudo apt install flatpak

```

### MonoDevelop

```
flatpak install --user --from https://download.mono-project.com/repo/monodevelop.flatpakref

flatpak run com.xamarin.MonoDevelop
```


## Correct the conda path issues

```
sudo chown -R eklavya ~/miniconda3/
```


### Bazel build

Reference 
https://docs.bazel.build/versions/master/install-ubuntu.html#install-on-ubuntu 

Note that bazel-0.5.4-without-jdk-installer-linux-x86_64.sh also exists. It is a version without embedded JDK 8. Only use this installer if you already have JDK 8 installed. 


```sh
echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list
curl https://bazel.build/bazel-release.pub.gpg | sudo apt-key add -

sudo apt-get update && sudo apt-get install bazel

```
- To upgrade Bazel

Once installed, you can upgrade to a newer version of Bazel with:

```sh

sudo apt-get upgrade bazel
```
- 

### IntelliJ Idea



### OCAML

## Opam

The quickest way to get the latest opam up and working is to run:
```
wget https://raw.github.com/ocaml/opam/master/shell/opam_installer.sh -O - | sh -s /usr/local/bin
```
This will simply check your architecture, download and install the proper pre-compiled binary and run opam init.
