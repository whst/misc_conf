alias bashconfig="vim ~/.bashrc && source ~/.bashrc"
alias vimconfig='vim ~/.vim/vimrc'

alias rm='rm -i'; alias mv='mv -i'; alias cp='cp -i'
alias chm='chmod'
alias df='df -h'
alias tch='touch'
alias gcc='gcc -fdiagnostics-color=auto'
alias g++='g++ -fdiagnostics-color=auto'

alias py='python';	alias py3='python3'
alias bpy='bpython';	alias bpy3='bpython3'


alias v='vim';		alias sv='vim --noplugin'
alias svim='vim --noplugin'
alias gv='gvim'		alias sgv='gvim --noplugin'
alias o='xdg-open'; alias o.='xdg-open .'; alias owd='xdg-open .'
alias cls='printf "\033c"'
alias sl='ls';		alias ks='ls'

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

export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export PATH=$JAVA_HOME/bin:$PATH
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
