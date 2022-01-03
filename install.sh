#!/bin/bash
# This is supposed to be downloaded by itself

install_key() {
 key=$(basename "$1")
 read -p "password for ${key}?: " PASSWD
 mkdir -p ~/.ssh
 rm -f ~/.ssh/${key}*
 gpg --batch --passphrase "$PASSWD" -o ~/.ssh/${key} -d ${1}.gpg || return
 chmod 600 ~/.ssh/${key}
 ssh-keygen -y -f ~/.ssh/${key} > ~/.ssh/${key}.pub
}

mkdir -p ~/dev ~/bin

sudo apt install -y curl git-gui entr tcc golang-go clang libllvm11

curl -Lo /tmp/hikari.key.gpg https://github.com/ftphikari/lib/raw/main/hikari.key.gpg

install_key /tmp/hikari.key

export GIT_SSH_COMMAND="ssh -i ~/.ssh/hikari.key -o IdentitiesOnly=yes"
export GOBIN=~/bin

git clone git@github.com:ftphikari/lib ~/lib

grep 'lib/profile' ~/.bashrc || echo '. ~/lib/profile' >> ~/.bashrc

go install github.com/ftphikari/findssh@v1.0.1

mkdir -p ~/.config
ln -fs ~/lib/gf2_config.ini ~/.config/gf2_config.ini

