# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="xiong-chiamiov"
# ZSH_THEME="refined"
# ZSH_THEME="dogenpunk"
ZSH_THEME="fletcherm"
# ZSH_THEME="random"
# ZSH_THEME_RANDOM_QUIET=true

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
ZSH_THEME_RANDOM_CANDIDATES=("xiong-chiamiov" "refined" "lukerandall" "junkfood" "gnzh" "linuxonly" "candy" "crcandy" "afowler" "avit" "jonathan" "tjkirch" "jispwoso" "clean" "simple" "mrtazz" "fletcherm" "crunch" "apple" "maran" "zhann" "rgm" "kennethreitz" "jaischeema" "strug" "pmcgee" "gallifrey" "tonotdo")

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting history-substring-search zsh-interactive-cd zsh-navigation-tools vi-mode tmux fzf)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# PS1='[\u@\h \W]\$ '
# ======== Exports =======
export BASHRC="$HOME/.bashrc"
export ROFI_PDF="$HOME/.config/rofi/scripts/zathura_selector.sh"
# ======== Export Path =======
export PATH="/home/dream/.cargo/bin:$PATH"
export PATH="/home/dream/.local/bin:$PATH"
export PATH="/home/dream/.local/share/npm/bin:$PATH"
# ======== Setup Node Version Manager =======
source /usr/share/nvm/init-nvm.sh
# == Shell Options ==
# shopt -s cdspell
# shopt -s autocd
# shopt -s dirspell
# shopt -s cmdhist
# shopt -s lithist
## Options section
setopt correct                                                  # Auto correct mistakes
setopt extendedglob                                             # Extended globbing. Allows using regular expressions with *
setopt nocaseglob                                               # Case insensitive globbing
setopt rcexpandparam                                            # Array expension with parameters
setopt nocheckjobs                                              # Don't warn about running processes when exiting
setopt numericglobsort                                          # Sort filenames numerically when it makes sense
setopt nobeep                                                   # No beep
setopt appendhistory                                            # Immediately append history instead of overwriting
setopt histignorealldups                                        # If a new command is a duplicate, remove the older one
setopt autocd                                                   # if only directory path is entered, cd there.
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

# Completion.
autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'       # Case insensitive tab completion
zstyle ':completion:*' rehash true                              # automatically find new executables in path 
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"         # Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' menu select
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*:descriptions' format '%U%F{cyan}%d%f%u'

# Speed up completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.cache/zcache

# automatically load bash completion functions
autoload -U +X bashcompinit && bashcompinit

# HISTFILE=~/.zhistory
HISTSIZE=50000
SAVEHIST=10000


# == Aliases ==
# Bible Verse
alias bv='diatheke -b DRC -k'
alias rbv='diatheke -b DRC -k $((RANDOM % 35817))'
# Define a function to fetch a random verse with 28 words or less

# ls use colors
alias ls='ls --color=auto'
alias ll='ls --color=auto -ll'
alias la='ls --color=auto -al'
# neovim
# alias v="nvim"
alias v="lvim"
alias lv="lvim"
alias wiki='cd ~/vimwiki && nvim +VimwikiIndex'
alias jrnl='nvim +VimwikiMakeDiaryNote'
alias jrnls='nvim +VimwikiDiaryIndex'
# rsync -- backing up zv1
alias rsync-zv1='rsync -rltP'
# rsync -- home backup
alias rsync-bak='! [ -d /home/dream ] && echo "/home/dream not found" || rsync -auvP /home/dream /media/lacie/backups/t14/ --exclude={music,.cache,blender/*/scripts/addons,cargo/registry,node_modules,ISOs,BraveSoftware,cache,*Cache*,*cache*,.ssh,lost+found,.local,*pki,.BitwigStudio,Code\ -\ OSS} --include={Code\ -\ OSS/Preferences,Code\ -\ OSS/User/keybindings.json,Code\ -\ OSS/User/settings.json,Code\ -\ OSS/User/Snippets}'
# Defaulting config files
alias mbsync='mbsync -c "$XDG_CONFIG_HOME"/isync/mbsyncrc'
# launch cmus in terminal if called from runprompt
#alias cmus='[ -t 0 ] && cmus || alacritty -e cmus'
# mount btrfs drive as user
alias busermnt='sudo mount -o uid=$USER,gid=$(id -gn $USER)'
# mount btrfs drive as user
alias usermnt='sudo mount -o user'
# disk destroyer
alias copyiso='sudo dd bs=4M conv=fdatasync status=progress oflag=direct'
# shortcuts
alias conf='cd $HOME/.config'
alias confnv='cd $HOME/.config/nvim && lvim'
alias confal='cd $HOME/.config/alacritty && lvim alacritty.yml'
alias confaw='cd $HOME/.config/awesome && lvim rc.lua'
alias confba='cd $HOME && nvim .bashrc'
# dotfiles git repo
alias dotfiles='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'
#NOTE: need to run the following once to exclude files not in working tree:
# dotfiles config --local status.showUntrackedFiles no
# clear yay cache
alias ycc='yay -Sc --noconfirm'
# update aur packages
alias yayup='yay --ignore bitwig-studio -a'
# pandoc
alias md2pdf='pandoc --pdf-engine=xelatex -V geometry:margin=1in -V geometry:a4paper -V fontsize:12pt -s -V colorlinks=true -V linkcolor=blue'
# open frame works
alias ofApps='cd $PG_OF_PATH/apps/myApps'
# "make" alias, mainly for openFrameworks
alias run='make run'
# openFrameworks 
ofv9=~/dev/of_v0.9.8_linux64_release
ofv10=~/dev/of_v0.10.0_linux64gcc6_release
ofv12=~/dev/of_v20240106_linux64gcc6_release
pgPath=/projectGenerator-linux64/projectGenerator
alias pg9='$ofv9/$pgPath'
alias pg10='$ofv10/$pgPath'
alias pg12='$ofv12/$pgPath'

# ======== Functions ======== 
# pacman
pzf () { pacman -Slq | fzf --multi --preview 'cat <(pacman -Si {1}) <(pacman -Fl {1} | awk "{print \$2}")' | xargs -ro sudo pacman -S;}
pzfr () { pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns; }
# yay
yzf () { yay -Slq | fzf --multi --preview 'cat <(yay -Si {1}) <(yay -Fl {1} | awk "{print \$2}")' | xargs -ro yay -S;}
# create vite react app
vra () {
  vite-react-app $1 &&
  cd $1
}
# create vite react-ts app
vrta () {
  vite-react-ts-app $1 &&
  cd $1
}
# create vanilla typescript app
vts () {
  npm create vite@latest $1 -- --template vanilla-ts &&
  cd $1 &&
  npm i &&
  echo "📓 Making initial commit..." &&
  git init &&
  git add . && git commit -m "😎 initial commit" &&
  echo "😄 All done! 💥👨‍💻⚔💫"
}
# create express/typescript app
ceta () {
  create-express-ts-app $1 &&
  cd $1 && npm run dev
}

# npx
cra () {
  npx create-react-app $1 && echo "..." &&
  cd $1 && echo "➡  Now in $(pwd)!" &&
  echo "🤯 Replacing files with boilerplate..." &&
  rm public src -rf && 
  cp -vr ~/lab/utils/react-boiler-plate/* . &&
  echo "📓 Making initial commit..." &&
  git add . && git commit -m "😎 initial commit"
  echo "😄 All done! 💥👨‍💻⚔💫"
}
# unmount and eject
umej () {
  sudo umount $(findmnt -nr -o target -S ${1}) && sudo eject ${1} && echo "success" 
}

# ======== VI Mode =========
#set -o vi
#bind -m vi-command 'Control-l: clear-screen'
#bind -m vi-insert 'Control-l: clear-screen'
# ======== App Configurations ======== 
# = dylanraps/fff = 
export FFF_HIDDEN=0
export FFF_LS_COLORS=1
export FFF_COL1=2
export FFF_COL2=7
export FFF_COL3=6
export FFF_COL4=1
export FFF_COL5=0
export EDITOR="nvim"
export FFF_OPENER="xdg-open"
export FFF_STAT_CMD="stat"
export FFF_CD_ON_EXIT=1
export FFF_FAV1=~/lab
export FFF_FAV2=~/lab/scratch
export FFF_FAV3=~/lab/courses
#export FFF_FAV4=/
#export FFF_FAV5=/
#export FFF_FAV6=/
#export FFF_FAV7=
#export FFF_FAV8=
#export FFF_FAV9=
#export FFF_W3M_XOFFSET=0
#export FFF_W3M_YOFFSET=0
export FFF_FILE_FORMAT="%f"
export FFF_MARK_FORMAT=" %f*"
# cd on exit
f() {
    fff "$@"
    cd "$(cat "${XDG_CACHE_HOME:=${HOME}/.cache}/fff/.fff_d")"
}
alias fv="f ; v"
. "/home/dream/.local/share/cargo/env"
# ======== EOF Programs ======== 
echo -e ""
# ((RANDOM % 2)) && nerdfetch || fm6000 -de awesomewm -c cyan -r
# Define the list of commands
# mycmds=("nerdfetch" "fm6000 -de awesomewm -c cyan -r" "cutefetch" "treefetch" "treefetch -b" "afetch" "cfetch" "pfetch")
mycmds=("nerdfetch" "fm6000 -de awesomewm -c cyan -r" "treefetch" "treefetch -b" "afetch" "cfetch" "pfetch")

# Select a random command from the list
random_command=$(shuf -n 1 -e "${mycmds[@]}")

# Run the selected command
eval "${random_command}"
# fm6000 -de awesomewm


# ======== Prompt ========
# eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
