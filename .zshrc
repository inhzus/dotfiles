# PS4=$'\\\011%D{%s%6.}\011%x\011%I\011%N\011%e\011'
# exec 3>&2 2>/tmp/zshstart.$$.log
# setopt xtrace prompt_subst

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/suun/.oh-my-zsh"
export TERM=xterm-256color

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"
# ZSH_THEME="amuse"
ZSH_THEME="ys-mod"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
EDITOR=vim
VISUAL=vim

plugins=(git virtualenv z npm docker docker-compose encode64 extract)


source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
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
export DEFAULT_USER="suun"

# alias
alias cl="clear"
alias rm="gio trash"
# xfind () { sudo rifle $(find $@ -type f 2>/dev/null | fzf -e --reverse); }
ffind () {
    dir="."
    typ="f"
    if [[ $# -gt 0 ]]; then
        dir=$1
    fi
    if [[ $# -gt 1 ]]; then
        typ=$2
    fi
    sudo find $dir -type $typ 2>/dev/null | fzf -e --reverse;
}
rfind () {
    sudo rifle $(ffind $@);
}
# alias rfind="sudo rifle \$(ffind)";
alias re="tee /tmp/bash.record"
alias we="cat /tmp/bash.record"

# tmux
alias t="tmux"

alias cat_history="cat ~/.zsh_history | grep"
alias plz="sudo"

# youtube-dl
alias ydl="youtube-dl --external-downloader aria2c"
m3u8 () {
    proxychains4 ffmpeg -i $1 -bsf:a aac_adtstoasc -vcodec copy -c copy -crf 50 $2.mp4
}
sm3u8 () {
    streamlink "hlsvariant://$1" best --hls-segment-threads 10 -o $2.mp4
}

# bluetooth
alias b2ue="bluetoothctl connect 70:26:05:D9:6C:74"
alias b3ue="bluetoothctl connect 38:18:4C:47:EE:D4"

# vmware
alias vm_env_start="sudo systemctl start vmware-networks.service  vmware-usbarbitrator.service vmware-hostd.service"
alias vm_env_stop="sudo systemctl stop vmware-networks.service vmware-usbarbitrator.service vmware-hostd.service"

## proxy
alias pr="proxychains4"
alias sp="setproxy.sh"
alias gr="graftcp"
alias grl="graftcp-local -socks5 127.0.0.1:7891"
alias clash-web="cd ~/repos/clash-dashboard && npm start"

## curl p.nju.edu.cn
alias net="sh ~/scripts/net.sh && pm2 restart clash -a"

## zsh configuration
alias reload="source ~/.zshrc"
alias zconfig="vim ~/.zshrc"

## xdg-open
alias xopen="xdg-open"

# User bin path
export PATH=/home/suun/.local/bin:$PATH

# JAVA configuration
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export JRE_HOME=$JAVA_HOME/jre
export CLASSPATH=.:$JAVA_HOME/lib:$JRE_HOME/lib
export PATH=$JAVA_HOME/bin:$PATH

# Hadoop configuration
export HADOOP_HOME=/home/suun/local/hadoop-2.7.7
# export PATH=${HADOOP_HOME}/bin:${HADOOP_HOME}/sbin:$PATH

# Maven path
export PATH=/usr/lib/maven/apache-maven-3.6.1/bin:$PATH

# npm
export PATH=~/.npm/bin:$PATH

# Ruby
export PATH=~/.gem/ruby/2.6.0/bin:$PATH

# go bin
export PATH=/usr/local/go/bin:$HOME/go/bin:$PATH
# export GO111MODULE=on
export GOPATH=$HOME/go
export GOPROXY=https://goproxy.io

# scripts

export PATH=$HOME/scripts/:$PATH

###-begin-pm2-completion-###
### credits to npm for the completion file model
#
# Installation: pm2 completion >> ~/.bashrc  (or ~/.zshrc)
#

COMP_WORDBREAKS=${COMP_WORDBREAKS/=/}
COMP_WORDBREAKS=${COMP_WORDBREAKS/@/}
export COMP_WORDBREAKS

if type complete &>/dev/null; then
  _pm2_completion () {
    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$COMP_CWORD" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           pm2 completion -- "${COMP_WORDS[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -o default -F _pm2_completion pm2
elif type compctl &>/dev/null; then
  _pm2_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       pm2 completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _pm2_completion + -f + pm2
fi
###-end-pm2-completion-###

# termite ctrl+shift+t open terminal in current directory
if [[ $TERM == xterm-termite ]]; then
  . /etc/profile.d/vte.sh
  __vte_osc7
fi

# include z.sh
. ~/z.sh

# autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^ ' autosuggest-accept

# unsetopt xtrace
# exec 2>&3 3>&-

# OPAM configuration
# . /home/suun/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

alias dual_screen="xrandr --output eDP1 --left-of DP1 --auto && xrandr --output DP1 --left-of eDP1 --auto"

# screenfetch | lolcat
setopt nonomatch
