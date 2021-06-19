#!/usr/bin/sh
if [ `whoami` != 'root' ]
then
  echo 'Run as root!'
  exit
fi

echo 'Installing apps!'
apt update
apt upgrade
apt install python python3-pip steam nvidia-driver-460 git tilix nautilus \
pulseeffects krita unrar unzip kdenlive
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
pip3 install numpy ipython
apm install atom-beautify autosave
snap install discord-canary qbittorrent-arnatious atom
update-alternatives --config x-terminal-emulator
echo 'End'
