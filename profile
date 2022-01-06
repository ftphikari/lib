export HISTFILE=~/.cache/shell_history
export HISTSIZE=10000

export SUDO_EDITOR=howl
export GIT_EDITOR=howl
export GOPATH=~/go
export ODIN_ROOT=~/odin

export PATH=~/bin:~/lib/bin:${GOPATH}/bin:$ODIN_ROOT:$PATH

export EMAIL=ftphikari@protonmail.com
export GIT_COMMITTER_NAME=hikari
export GIT_AUTHOR_NAME=hikari
export GIT_SSH_COMMAND="ssh -i ~/.ssh/hikari.key -o IdentitiesOnly=yes"

export CHROMIUM_FLAGS="$(cat <<EOF
--force-dark-mode
--enable-features=WebUIDarkMode,VaapiVideoDecoder,WebRTCPipeWireCapturer
--disable-features=UseSkiaRenderer
--disable-gpu-rasterization
EOF
)"
