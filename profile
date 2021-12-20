export MICRO_CONFIG_HOME=~/lib/micro
export GIT_EDITOR=e
export GOPATH=~/go
export GOBIN=~/bin
export ODIN_ROOT=~/odin

export PATH=~/bin:~/lib/bin:$ODIN_ROOT:$PATH

# i don't use chromium that often but it's good to have this
CHROMIUM_FLAGS=$(cat <<FLAGS
--enable-features=WebRTCPipeWireCapturer
--enable-features=VaapiVideoDecoder
--disable-gpu-rasterization
FLAGS
)
export CHROMIUM_FLAGS

export EMAIL=ftphikari@protonmail.com
export GIT_COMMITTER_NAME=hikari
export GIT_AUTHOR_NAME=hikari
export GIT_SSH_COMMAND="ssh -i ~/.ssh/hikari.key -o IdentitiesOnly=yes"

pgrep ssh-agent && killall ssh-agent
eval "$(ssh-agent)"
