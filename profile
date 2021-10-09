export srv="follow@104.131.125.44 -p 1337"
export EMAIL=ftphikari@gmail.com
export GIT_COMMITTER_NAME=hikari
export GIT_AUTHOR_NAME=hikari
export GIT_EDITOR=vim
export GOPATH=~/go
export GOBIN=~/bin
export ODIN_ROOT=~/odin
export ODIN_SHARED=~/src

export PATH=~/bin:~/lib/bin:$ODIN_ROOT:$PATH

# for performance
#gsettings set org.gnome.desktop.interface enable-animations false

# does not have previews, so i use icon-view (default)
#gsettings set org.gnome.nautilus.preferences default-folder-viewer list-view

killall ssh-agent
eval "$(ssh-agent)"
ssh-add ~/.ssh/hikari.key
