#!/bin/sh

install_key() {
 key=${1}
 read -p "password for ${key}?: " PASSWD
 mkdir -p ~/.ssh/
 rm -f ~/.ssh/${key}*
 gpg --batch --passphrase "$PASSWD" -o ~/.ssh/${key} -d ${key}.gpg || return
 chmod 600 ~/.ssh/${key}
 ssh-keygen -y -f ~/.ssh/${key} > ~/.ssh/${key}.pub
}

install_key hikari.key
