# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-syntax-highlighting zsh-autosuggestions git sudo ls autojump colored-man-pages colorize extract zsh-256color)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias zshconfig='vim ~/.zshrc && source ~/.zshrc'
alias vimconfig='vim ~/.vim/vimrc'
alias en='export LANG=en_US.UTF-8'
alias cn='export LANG=zh_CN.UTF-8'

alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias chm='chmod'
alias df='df -h'
alias tch='touch'
alias gcc='gcc -fdiagnostics-color=auto'
alias g++='g++ -fdiagnostics-color=auto'

alias py='python'
alias py3='python3'
alias bpy='bpython';
alias bpy3='bpython3'

alias v='vim'
alias gv='gvim'
alias cls='printf "\033c"'
alias sl='ls';  alias ks='ls'

function o()
{
    if [ $# -le 0 ]; then
        xdg-open . 2>/dev/null
        return 0
    fi
    while [ $# -gt 0 ]; do
        xdg-open $1 2>/dev/null
        shift 1
    done
}

alias ase='apt-cache search' #搜索包
alias ain='sudo apt-get install' #安装包
alias afi='sudo apt-get -f install' #修复安装
alias aud='sudo apt-get update' #更新源
alias aug='sudo apt-get upgrade' #更新已装软件
alias aup='sudo apt-get update && sudo apt-get upgrade'
alias arm='sudo apt-get remove' #删除软件
alias apu='sudo apt-get purge' #删除软件和配置文件
alias aar='sudo apt-get autoremove' #删除孤立的软件
alias acn='sudo apt-get clean' #清理所有deb包
alias aac='sudo apt-get autoclean' #清理已删除软件的deb包

alias -s c='vim'
alias -s cpp='vim'
alias -s html='xdg-open'
alias -s mp3='mplayer'
alias -s mp4='mplayer'
alias -s txt='vim --noplugin'
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
#以下字符视为单词的一部分
WORDCHARS='*?_[]~=&;!#$&^(){}<>'

#在Emacs终端中使用Zsh的一些设置 不推荐在Emacs中使用它
if [[ "$TERM" == "dumb" ]]; then
    setopt No_zle
    PROMPT='%n@%M %/
    >>'
    alias ls='ls -F'
fi

#路径别名
hash -d DATA='/media/wang/DATA'
hash -d MUSIC='/media/wang/DATA/music'
hash -d MOVIE='/media/wang/TOSHIBA/_my_doc_/movie'
hash -d CODE="$HOME/Documents/code"
hash -d DIARY='/media/wang/DATA/doc/diary'
hash -d DOWNLOAD='/media/wang/DATA/download'
hash -d PDF="$HOME/Documents/pdf"

# Java Var
export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export PATH=$JAVA_HOME/bin:$PATH
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

# Enable autosuggestions automatically
zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init

# use ctrl+t to toggle autosuggestions (hopefully this wont be needed as
# zsh-autosuggestions is designed to be unobtrusive)
bindkey '^T' autosuggest-toggle
