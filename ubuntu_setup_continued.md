## Editors

#### Emacs


```sh

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

```


#### VIM

```
sudo curl -sLf https://spacevim.org/install.sh | bash

```


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
