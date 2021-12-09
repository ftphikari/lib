export MICRO_CONFIG_HOME=~/lib/micro
export GIT_EDITOR=e
export GOPATH=~/go
export GOBIN=~/bin
export ODIN_ROOT=~/odin

export PATH=~/bin:~/lib/bin:$ODIN_ROOT:$PATH

# for performance
#gsettings set org.gnome.desktop.interface enable-animations false

# does not have previews, so i use icon-view (default)
#gsettings set org.gnome.nautilus.preferences default-folder-viewer list-view

killall ssh-agent
eval "$(ssh-agent)"
