#
# ~/.bash_profile
#

# Added by me
# --------------------------------------
# XDG global variables
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache

export HISTFILE="${XDG_STATE_HOME}"/bash/history
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GOPATH="$XDG_DATA_HOME"/go
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export NVM_DIR="$XDG_DATA_HOME"/nvm
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc
export XDG_CURRENT_DESKTOP=awesomewm
export QT_QPA_PLATFORMTHEME=gtk2 keepassxc

export PG_OF_PATH=/home/dream/dev/of_v20240106_linux64gcc6_release

[[ -f ~/.bashrc ]] && . ~/.bashrc

# if [[ "$(tty)" = "/dev/tty1" ]]; then
# 	sleep 1
# 	startx
# fi
. "/home/dream/.local/share/cargo/env"
