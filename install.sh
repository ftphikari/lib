#!/bin/sh

yay -Syy --noconfirm --needed go qrencode upx telegram-desktop v4l2loopback-dkms rclone gnirehtet-bin odin-dev-bin

mkdir -p ~/{bin,src}
curl -Lo ~/bin/findssh https://github.com/ftphikari/findssh/releases/download/1.0.0/findssh.elf
chmod +x ~/bin/*

grep 'lib/profile' ~/.bash_profile || sed -i '1s!^!. ~/lib/profile\n!' ~/.bash_profile

doas sh -c 'mkdir -p /etc/sway/config.d/
cat >/etc/sway/config.d/wlsunset.conf <<EOF
exec wlsunset -l 49.4 -L 36.6
EOF

cat >/etc/youtube-dl.conf <<EOF
--format=bestvideo[height<=?1080][vcodec=avc1]+bestaudio/best
EOF
'
