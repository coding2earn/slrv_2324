## Installing some useful GUI apps on WSL Ubuntu
#!/bin/bash

sudo apt install terminator -y
sudo apt install gnome-terminal -y
sudo apt install gimp -y
sudo apt install nautilus -y
sudo apt install vlc -y
sudo apt install x11-apps -y
cd /tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install --fix-missing ./google-chrome-stable_current_amd64.deb -y
google-chrome
