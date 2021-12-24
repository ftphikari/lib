#!/bin/bash
# This is supposed to be downloaded by itself

install_key() {
 key=$(basename "$1")
 read -p "password for ${key}?: " PASSWD
 mkdir -p ~/.ssh/
 rm -f ~/.ssh/${key}*
 gpg --batch --passphrase "$PASSWD" -o ~/.ssh/${key} -d ${1}.gpg || return
 chmod 600 ~/.ssh/${key}
 ssh-keygen -y -f ~/.ssh/${key} > ~/.ssh/${key}.pub
}

curl -Lo /tmp/hikari.key.gpg https://github.com/ftphikari/lib/raw/main/hikari.key.gpg

install_key /tmp/hikari.key

export GIT_SSH_COMMAND="ssh -i ~/.ssh/hikari.key -o IdentitiesOnly=yes"

git clone git@github.com:ftphikari/lib ~/lib

grep 'lib/profile' ~/.bashrc || echo '. ~/lib/profile' >> ~/.bashrc

yay --needed --noconfirm -Syyuu telegram-desktop go rclone tcc clang llvm11 sfeed trash-cli entr

curl -Lo ~/bin/findssh https://github.com/ftphikari/findssh/releases/download/1.0.0/findssh.elf

mkdir -p ~/dev/
cd ~/dev/
git clone https://github.com/nakst/gf gf2
cd gf2
./build.sh
mv gf2 ~/bin/

mkdir -p ~/.config/
ln -fs ~/lib/gf2_config.ini ~/.config/gf2_config.ini

chmod +x ~/bin/*

doas sh -c '
cat >/etc/sway/config.d/wlsunset.conf <<EOF
# Greater precision than one decimal place serves no purpose
# (https://xkcd.com/2170/) other than padding the command-line.

exec wlsunset -l 49.4 -L 36.6
EOF

cat >/etc/sway/config.d/news.conf <<EOF
bindsym --to-code {
 XF86Launch1 exec news
 Shift+XF86Launch1 exec news-update
}
EOF
'
