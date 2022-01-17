#!/bin/bash

install_key() {
 key=$(basename "$1")
 read -p "password for ${key}?: " PASSWD
 mkdir -p ~/.ssh
 rm -f ~/.ssh/${key}*
 gpg --batch --passphrase "$PASSWD" -o ~/.ssh/${key} -d ${1}.gpg || return
 chmod 600 ~/.ssh/${key}
 ssh-keygen -y -f ~/.ssh/${key} > ~/.ssh/${key}.pub
}

install_key hikari.key

git config --global user.name "hikari"
git config --global user.email "ftphikari@gmail.com"

go install github.com/ftphikari/findssh@latest
go install github.com/ftphikari/gross@latest

mkdir -p ~/Programs/mpv*/portable_config
cp mpv.conf /Programs/mpv*/portable_config/

cp youtube-dl.conf ~/
