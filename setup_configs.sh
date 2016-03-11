# Create symlink:

ln -s ~/Dropbox/Config/bash_profile.txt ~/.bash_profile
ln -s ~/Dropbox/Config/ssh_config.txt ~/.ssh/config
ln -s ~/Dropbox/Config/scripts ~/.scripts

sudo rm /etc/hosts
sudo ln -s ~/Dropbox/Config/hosts.txt /etc/hosts


