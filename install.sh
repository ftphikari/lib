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

sudo apt install -y curl ripgrep git-gui entr \
make tcc golang-go golang-golang-x-tools clang \
llvm-11-dev libgtk-3-dev

curl -Lo /tmp/hikari.key.gpg https://github.com/ftphikari/lib/raw/main/hikari.key.gpg

install_key /tmp/hikari.key

export GIT_SSH_COMMAND="ssh -i ~/.ssh/hikari.key -o IdentitiesOnly=yes"
export GOPATH=~/go

go install github.com/ftphikari/findssh@latest
go install github.com/mdempsky/gocode@latest

git clone git@github.com:ftphikari/lib ~/lib

grep 'lib/profile' ~/.profile || echo '. ~/lib/profile' >> ~/.profile

mkdir -p ~/.config
ln -fs ~/lib/gf2_config.ini ~/.config/gf2_config.ini
mkdir -p ~/.config/mpv
ln -fs ~/lib/mpv.conf ~/.config/mpv.conf
ln -fs ~/lib/howl ~/.config/howl
