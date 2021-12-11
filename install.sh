#!/bin/sh

#yay -Syy --noconfirm --needed go qrencode upx telegram-desktop \
#rclone gnirehtet-bin gf-debugger-git

mkdir -p ~/bin/ ~/dev/
curl -Lo ~/bin/findssh https://github.com/ftphikari/findssh/releases/download/1.0.0/findssh.elf
chmod +x ~/bin/*

grep 'lib/profile' ~/.profile || echo '. ~/lib/profile' >> ~/.profile

mkdir -p ~/.local/share/applications/
ln -fs ~/lib/discord.desktop ~/.local/share/applications/discord.desktop
chmod +x ~/.local/share/applications/discord.desktop

#mkdir -p ~/.local/share/icons/
#ln -fs ~/lib/discord.svg ~/.local/share/icons/discord.svg

mkdir -p ~/.config/
ln -fs ~/lib/gf2_config.ini ~/.config/gf2_config.ini

mkdir -p ~/.config/youtube-dl/
cat >~/.config/youtube-dl/config <<EOF
--format=bestvideo[height<=?1080][vcodec=avc1]+bestaudio/best
EOF
