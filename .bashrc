#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '
# Set up Node Version Manager
source /usr/share/nvm/init-nvm.sh
# == Shell Options ==
shopt -s cdspell
shopt -s autocd
shopt -s dirspell
shopt -s cmdhist
shopt -s lithist
# == Aliases ==
# ls use colors
alias ls='ls --color=auto'
# neovim
alias v="nvim"
alias lv="lvim"
alias wiki='cd ~/vimwiki && nvim +VimwikiIndex'
alias journal='nvim +VimwikiMakeDiaryNote'
alias journals='nvim +VimwikiDiaryIndex'
# rsync -- backing up zv1
alias rsync-zv1='rsync -rltP'
# rsync -- home backup
alias rsync-bak='! [ -d /home/dream ] && echo "/home/dream not found" || rsync -auvP /home/dream /media/lacie/backups/t14/ --exclude={.cache,blender/*/scripts/addons,cargo/registry,node_modules,ISOs,BraveSoftware,cache,*Cache*,*cache*,.ssh,lost+found,.local,*pki,.BitwigStudio,Code\ -\ OSS} --include={Code\ -\ OSS/Preferences,Code\ -\ OSS/User/keybindings.json,Code\ -\ OSS/User/settings.json,Code\ -\ OSS/User/Snippets}'
# Defaulting config files
alias mbsync='mbsync -c "$XDG_CONFIG_HOME"/isync/mbsyncrc'
# launch cmus in terminal if called from runprompt
alias cmus='[ -t 0 ] && cmus || alacritty -e cmus'
# mount btrfs drive as user
alias busermnt='sudo mount -o uid=$USER,gid=$(id -gn $USER)'
# mount btrfs drive as user
alias usermnt='sudo mount -o user'
# disk destroyer
alias copyiso='sudo dd bs=4M conv=fdatasync status=progress oflag=direct'
# shortcuts
alias conf='cd $HOME/.config'
alias confnv='cd $HOME/.config/nvim && nvim'
alias confal='cd $HOME/.config/alacritty && nvim alacritty.yml'
alias confaw='cd $HOME/.config/awesome && nvim rc.lua'
alias confba='cd $HOME && nvim .bashrc'
alias lab='cd $HOME/lab'
alias labc='cd $HOME/lab/courses'
alias dotfiles='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'
#NOTE: need to run the following to exclude files not in working tree:
# dotfiles config --local status.showUntrackedFiles no
# ======== Functions ======== 
# pacman
pzf () { pacman -Slq | fzf --multi --preview 'cat <(pacman -Si {1}) <(pacman -Fl {1} | awk "{print \$2}")' | xargs -ro sudo pacman -S;}
pzfr () { pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns; }
# yay
yzf () { yay -Slq | fzf --multi --preview 'cat <(yay -Si {1}) <(yay -Fl {1} | awk "{print \$2}")' | xargs -ro yay -S;}
# npx
cra () {
  npx create-react-app $1 && echo "..." &&
  cd $1 && echo "➡  Now in $(pwd)!" &&
  echo "🤯 Replacing files with boilerplate..." &&
  rm public src -rf && 
  cp -vr ~/lab/utils/react-boiler-plate/{public,src} . &&
  echo "📓 Making initial commit..." &&
  git add . && git commit -m "😎 initial commit"
  echo "😄 All done! 💥👨‍💻⚔💫"
}
# unmount and eject
umej () {
  sudo umount $(findmnt -nr -o target -S ${1}) && sudo eject ${1} && echo "success" 
}
# ======== EOF Programs ======== 
#nerdfetch
fm6000 -de awesomewm -c cyan -r
# ======== VI Mode =========
#set -o vi
#bind -m vi-command 'Control-l: clear-screen'
#bind -m vi-insert 'Control-l: clear-screen'
# ======== Exports =======
export BASHRC="$HOME/.bashrc"
export ROFI_PDF="$HOME/.config/rofi/scripts/zathura_selector.sh"
# ======== Export Path =======
export PATH="/home/dream/.cargo/bin:$PATH"
export PATH="/home/dream/.local/bin:$PATH"
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
#export FFF_FAV2=~/.bashrc
#export FFF_FAV3=~/Pictures/Wallpapers/
#export FFF_FAV4=/usr/share
#export FFF_FAV5=/
#export FFF_FAV6=
#export FFF_FAV7=
#export FFF_FAV8=
export FFF_FAV9=~/lab/courses/modern-react-with-redux-2023/
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
# ======== Prompt ========
eval "$(starship init bash)"
