
#            _              
#    _______| |__  _ __ ___ 
#   |_  / __| '_ \| '__/ __|
#  _ / /\__ \ | | | | | (__ 
# (_)___|___/_| |_|_|  \___|

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

### History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

### Zinit plugins
zinit light-mode for \
    zsh-users/zsh-syntax-highlighting \
    zsh-users/zsh-autosuggestions \
    zsh-users/zsh-history-substring-search \
    zsh-users/zsh-completions

### Extract
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

function extract {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
    echo "       extract <path/file_name_1.ext> [path/file_name_2.ext] [path/file_name_3.ext]"
 else
    for n in "$@"
    do
      if [ -f "$n" ] ; then
          case "${n%,}" in
            *.cbt|*.tar.bz2|*.tar.gz|*.tar.xz|*.tbz2|*.tgz|*.txz|*.tar)
                         tar xvf "$n"       ;;
            *.lzma)      unlzma ./"$n"      ;;
            *.bz2)       bunzip2 ./"$n"     ;;
            *.cbr|*.rar)       unrar x -ad ./"$n" ;;
            *.gz)        gunzip ./"$n"      ;;
            *.cbz|*.epub|*.zip)       unzip ./"$n"       ;;
            *.z)         uncompress ./"$n"  ;;
            *.7z|*.arj|*.cab|*.cb7|*.chm|*.deb|*.dmg|*.iso|*.lzh|*.msi|*.pkg|*.rpm|*.udf|*.wim|*.xar)
                         7z x ./"$n"        ;;
            *.xz)        unxz ./"$n"        ;;
            *.exe)       cabextract ./"$n"  ;;
            *.cpio)      cpio -id < ./"$n"  ;;
            *.cba|*.ace)      unace x ./"$n"      ;;
            *)
                         echo "extract: '$n' - unknown archive method"
                         return 1
                         ;;
          esac
      else
          echo "'$n' - file does not exist"
          return 1
      fi
    done
fi
}

### Vi Mode
bindkey -v
export KEYTIMEOUT=1
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

### TTY Colors and Font
if [ "$TERM" = "linux" ]; then
    echo -en "\e]P032302f"
    echo -en "\e]P8928374"
    echo -en "\e]P1cc241d"
    echo -en "\e]P9fb4934"
    echo -en "\e]P298971a"
    echo -en "\e]PAb8bb26"
    echo -en "\e]P3d79921"
    echo -en "\e]PBfabd2f"
    echo -en "\e]P4458588"
    echo -en "\e]PC83a598"
    echo -en "\e]P5b16286"
    echo -en "\e]PDd3869b"
    echo -en "\e]P6689d6a"
    echo -en "\e]PE8ec07c"
    echo -en "\e]P7a89984"
    echo -en "\e]PFebdbb2"
    pwdfontstuff=$(pwd)
    cd /usr/share/kbd/consolefonts 
    setfont ter-powerline-v14n
    cd $pwdfontstuff
    clear
fi

### Bindings
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

### Propmpt
eval "$(starship init zsh)"

### Variables
if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/Applications" ] ;
  then PATH="$HOME/Applications:$PATH"
fi
export EDITOR=nvim
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'	
export CLICOLOR=1	
export KEYTIMEOUT=1
export HISTORY_IGNORE="(ls|cd|pwd|exit|sudo reboot|history|cd -|cd ..)"
export TERMINAL=""

### Aliases
alias ls='exa -a --color=always --group-directories-first'
alias la='exa -a --color=always --group-directories-first'
alias ll='exa -al --color=always --group-directories-first'
alias lt='exa -aT --color=always --group-directories-first'
alias l.='exa -a | egrep "^\."'
alias vim='nvim'
alias vi='nvim'
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias ..='cd ..'
alias update='paru -Syu'
alias df='df -h'
alias free='free -m'
alias mirror="sudo reflector -f 50 -l 50 --number 10 --protocol https --protocol http --verbose --save /etc/pacman.d/mirrorlist"
alias gaddup='git add -u'
alias gaddall='git add .'
alias gbranch='git branch'
alias gcheckout='git checkout'
alias gclone='git clone'
alias gcommit='git commit -m'
alias gfetch='git fetch'
alias gpull='git pull origin'
alias gpush='git push origin'
alias gstatus='git status'  # 'status' is protected name so using 'stat' instead
alias gtag='git tag'
alias gnewtag='git tag -a'
source ~/.privatealiases

### Fetch
fetch
