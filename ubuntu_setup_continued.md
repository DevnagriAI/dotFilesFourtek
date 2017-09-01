## Editors

#### Emacs


```sh

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

```


#### VIM

```
sudo curl -sLf https://spacevim.org/install.sh | bash

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
