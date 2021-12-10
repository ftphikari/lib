export MICRO_CONFIG_HOME=~/lib/micro
export GIT_EDITOR=e
export GOPATH=~/go
export GOBIN=~/bin
export ODIN_ROOT=~/odin

export PATH=~/bin:~/lib/bin:$ODIN_ROOT:$PATH

export EMAIL=ftphikari@protonmail.com
export GIT_COMMITTER_NAME=hikari
export GIT_AUTHOR_NAME=hikari
export GIT_SSH_COMMAND="ssh -i ~/.ssh/hikari.key -o IdentitiesOnly=yes"

killall ssh-agent
eval "$(ssh-agent)"
