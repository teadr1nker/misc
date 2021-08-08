#!/usr/bin/sh
dpkg -s discord-canary
if [ $? -eq '0' ]
then
  echo 'discord is installed!'
  dpkg -r discord-canary
fi
wget https://discordapp.com/api/download/canary?platform=linux
dpkg -i 'canary?platform=linux'
rm 'canary?platform=linux'
