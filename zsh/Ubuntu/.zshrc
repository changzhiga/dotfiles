#Oh-my-ZSH 配置
#-------------------------------------------------------------------
# Path to your oh-my-zsh configuration.设置 ZSH默认路径
export ZSH=/home/teishikaa/.oh-my-zsh

# Setup terminal, and turn on colors 颜色配置
export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# Enable color in grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'

# 设置默认编辑器
alias vi='vim'
alias edit=$EDITOR
export EDITOR= "vim"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/

ZSH_THEME="zeta"
alias sz='source ~/.zshrc' #重新执行

# -------------------------------------------------------------------
# Directory movement 文件夹移动
# -------------------------------------------------------------------
alias up="cd .."
alias bk="cd -"
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# -------------------------------------------------------------------
# Directory information 文件信息
# -------------------------------------------------------------------
alias ls="ls -G"
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
alias dus="du -smh * | sort -nr" #根据文件大小排序
alias lh='ls -d .*' # show hidden files/directories only #只显示隐藏文件
alias ld="ls -lih"
alias map='traceroute' #路由跟踪
alias tgz='tar -czf' #tar -czf [文件名] [被压缩文件] gzip压缩
alias ugz='tar -xzf' #tar -xzf [被压缩文件]
alias pwdc='pwd | pbcopy' #查看当前路径并且复制
alias cleanDS='find . -name ".DS_Store" -print0 | xargs -0 rm -rf' #清除目录下的 DS_Store文件

fucntion mkd(){
mkdir -p "$@" && cd "$@"
   }
   ###列出系统最大的文件 快捷 maxfile 即可
   maxfile(){
	   lsof / | awk '{ if($7 > 1048576) print $7/1048576 "MB "$9 }' | sort -n -u | tail
   }

   extract () {
	   if [ -f $1 ] ; then
		   case $1 in
			   *.tar.bz2)   tar xjf $1     ;;
		   *.tar.gz)    tar xzf $1     ;;
	   *.bz2)       bunzip2 $1     ;;
   *.rar)       unrar e $1     ;;
		*.gz)        gunzip $1      ;;
	*.tar)       tar xf $1      ;;
*.tbz2)      tar xjf $1     ;;
		*.tgz)       tar xzf $1     ;;
	*.zip)       unzip $1       ;;
*.Z)         uncompress $1  ;;
		*.7z)        7z x $1        ;;
	*)     echo "'$1' cannot be extracted via extract()" ;;
esac
	 else
		 echo "'$1' is not a valid file"
	 fi
 }

 ###

 # -------------------------------------------------------------------
 # 服务器 Servers
 # -------------------------------------------------------------------


 # -------------------------------------------------------------------
 # 快速编辑常用文件 Quick Edit
 # -------------------------------------------------------------------

 ###快速编辑
 ze(){
	 vim ~/.zshrc  #编辑ZSH配置文件
 }
 hosts(){
	 sudo vim /etc/hosts  #编辑 hosts 文件
 }
 vimrc(){
	 vim ~/.vimrc #编辑vim配置
 }
 ip(){
     curl ip.cn/$1 #调用ip.cn接口查询ip
 }
 zshrc(){
     nano ~/.zshrc #编辑zsh配置
 }

 # -------------------------------------------------------------------
 # Git
 # -------------------------------------------------------------------
 alias gam="git commit -a -m"
 alias gc= "git checkout"
 alias gs="git status"
 alias gp='git push'
 alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit "
 alias gb='git branch'
 alias gd='git diff' #显示缓存变化
 alias ghard='git reset --hard'

 # -------------------------------------------------------------------

# -------------------------------------------------------------------
# 极点客  Geek
# -------------------------------------------------------------------


###快速查看本机IP地址
function myip(){
myip="$(ifconfig | grep 'inet.*netmask.*broadcast')"
lanip="$(echo $myip | awk '{print $2}')"
publicip="$(echo $myip | awk '{print $6}')"
echo '你的局域网IP是: '$lanip
echo '你的外网IP是: '$publicip
echo '已经复制到剪贴板' pbcopy
}

# -------------------------------------------------------------------
# 系统相关 Mac Only
# -------------------------------------------------------------------

alias sagu="sudo apt-get update"
alias sagi="sudo apt-get install"
alias sagrm="sudo apt-get remove"

# -------------------------------------------------------------------
# 开发相关
# -------------------------------------------------------------------



# -------------------------------------------------------------------
# 路径相关
# -------------------------------------------------------------------


# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
 COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# 选择你所需要的插件

plugins=(git zsh-syntax-highlighting zsh-autosuggestions extract autojump)

source $ZSH/oh-my-zsh.sh

# Chinese Support 中文支持
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
