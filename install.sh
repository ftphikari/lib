#!/bin/sh

yay -Syy --noconfirm --needed go qrencode upx telegram-desktop mupen64plus v4l2loopback-dkms

mkdir -p ~/{bin,src}
curl https://github.com/ftphikari/yt2ogg/releases/download/1.0.0/yt2ogg.elf -o ~/bin/yt2ogg
chmod +x ~/bin/yt2ogg

rm -f ~/.vimrc
ln -sf ~/lib/vimrc ~/.vimrc

mkdir -p ~/.config/mupen64plus
rm -f ~/.config/mupen64plus/mupen64plus.cfg
ln -sf ~/lib/mupen64plus.cfg ~/.config/mupen64plus/mupen64plus.cfg

grep 'lib/profile' ~/.bash_profile || sed -i '1s!^!. ~/lib/profile\n!' ~/.bash_profile

doas sh -c 'mkdir -p /etc/sway/config.d/
cat >/etc/sway/config.d/wlsunset.conf <<EOF
exec wlsunset -l 49.4 -L 36.6
EOF

cat >>/etc/youtube-dl.conf <<EOF
--format=bestvideo[height<=?1080][vcodec=avc1]+bestaudio/best
EOF
'
