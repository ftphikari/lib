#!/bin/sh

sudo add-apt-repository ppa:atareao/telegram
apt update
apt install -y git-gui golang telegram qrencode upx rclone libfreetype-dev libx11-dev ffmpeg

grep 'lib/profile' ~/.profile || echo '. ~/lib/profile' >> ~/.profile

mkdir -p ~/.local/share/applications/
ln -fs ~/lib/discord.desktop ~/.local/share/applications/discord.desktop
chmod +x ~/.local/share/applications/discord.desktop

mkdir -p ~/.config/
ln -fs ~/lib/gf2_config.ini ~/.config/gf2_config.ini

mkdir -p ~/.config/youtube-dl/
cat >~/.config/youtube-dl/config <<EOF
--format=bestvideo[height<=?1080][vcodec=avc1]+bestaudio/best
EOF

mkdir -p ~/bin/ ~/dev/

# install findssh
curl -Lo ~/bin/findssh https://github.com/ftphikari/findssh/releases/download/1.0.0/findssh.elf

# install gf2
cd ~/dev/
git clone https://github.com/nakst/gf
cd gf
./build.sh
mv gf2 ~/bin/

chmod +x ~/bin/*
