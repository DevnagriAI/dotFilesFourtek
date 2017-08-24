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

- If the following **apt-update** command fails because of error
```sh
sudo apt-get update
```

Then run this python file

```sh
sudo python3 apt-remove-duplicate-source-entries.py

```

- If the update fails because of **libappstream**
```sh
sudo apt-get purge libappstream3
```

- Install the **libappindicator**


```sh
sudo apt-get install libappindicator1 libindicator7
```

#### Install Ruby 2.3.3




