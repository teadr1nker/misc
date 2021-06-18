#!/usr/bin/sh
if [ `whoami` != 'root' ]
then
  echo 'Run as root!'
  exit
fi

echo 'Installing apps!'
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | apt-key add -
apt update
apt install python python3-pip steam atom nvidia-driver-460 git tilix nautilus \
pulseeffects
snap install discord-canary
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
pip3 install numpy ipython
apm install atom-beautify autosave
echo 'End'