#####################################################################

##################### Oh-my-ZSH Configuration# ######################

#####################################################################

# -------------------------------------------------------------------
# Basic
# -------------------------------------------------------------------

# Path to oh-my-zsh configuration
 export ZSH=/Users/changzhiga/.oh-my-zsh

# Setup default editor
 alias vi='nvim'
 alias vim='nvim'
 alias edit=$EDITOR
 export EDITOR= "nvim"

# Themes and colors
 ZSH_THEME="lambda-mod"
 alias rl='source ~/.zshrc'

 export TERM=xterm-256color
 export CLICOLOR=1
 export LSCOLORS=Gxfxcxdxbxegedabagacad

 export GREP_OPTIONS='--color=auto'
 export GREP_COLOR='3;33'

# Quick edit

 zshrc(){
	 vim ~/.zshrc
 }
 hosts(){
	 sudo vim /etc/hosts
 }
 vimrc(){
	 vim ~/.vimrc
 }
 surge(){
 	st /Users/changzhiga/Library/Mobile\ Documents/iCloud~run~surge/Documents/Custom.conf
 }

# -------------------------------------------------------------------
# Directory stuffs
# -------------------------------------------------------------------

# Switch
 alias up="cd .."
 alias bk="cd -"
 alias ..='cd ..'
 alias ...='cd ../..'
 alias ....='cd ../../..'

# Path alias
 hash -d dld=~/Downloads
 hash -d desk=~/Desktop
 hash -d gh=~/Documents/GitHub
 hash -d hexo=~/Dropbox/Projects/hexo
 hash -d surge=~/Library/Mobile\ Documents/iCloud~run~surge/Documents
 hash -d pj=~/Dropbox/Projects

# File information
 alias ls="ls -G"
 alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
 alias dus="du -smh * | sort -nr" # sort by size
 alias lh='ls -d .*' # show hidden files/directories only
 alias ld="ls -lih"
 alias tgz='tar -czf' # tar -czf [文件名] [被压缩文件]
 alias ugz='tar -xzf' # tar -xzf [被压缩文件]
 alias pwdc='pwd | pbcopy' # check current path and copy
 alias cleanDS='find . -name ".DS_Store" -print0 | xargs -0 rm -rf' # clean DS_Store

# -------------------------------------------------------------------
# Servers
# -------------------------------------------------------------------

# SSH
 alias bwg="ssh bwg"
 alias pi="ssh pi"

# -------------------------------------------------------------------
# Netwrok
# -------------------------------------------------------------------

 alias ping="cd ~/Dropbox/Software/ && ./prettyping"
 alias tr='traceroute'

# Check IP
 function myip(){
 myip="$(ifconfig | grep 'inet.*netmask.*broadcast')"
 lanip="$(echo $myip | awk '{print $2}')"
 publicip="$(curl ip.cn/$1)"
 echo 'LAN IP: '$lanip
 echo 'WAN IP: '$publicip
 echo $lanip, $publicip | pbcopy
 echo 'Copied to clipboard'
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
 alias gd='git diff'
 alias ghard='git reset --hard'

# -------------------------------------------------------------------
# macOS
# -------------------------------------------------------------------

 alias dns="dscacheutil -flushcache"
 alias oo='open .' # open current directory in OS X Finder
 alias bi='brew install'
 alias bci='brew cask install'
 alias bui='brew uninstall'
 alias py2="python2.7"
 alias py3="python3"
 alias bdy="cd /Users/changzhiga/Dropbox/Software/BaiduPCS-Go/ && ./BaiduPCS-Go"
 alias top="sudo htop"
 alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"
 alias help='tldr'
 alias cat='bat'


# -------------------------------------------------------------------
# Misc
# -------------------------------------------------------------------

# Weather
 alias wtdg='curl wttr.in/~Dongguan'
 alias wtgz='curl wttr.in/~Guangzhou'
 alias wtsz='curl wttr.in/~Shenzhen'
 alias wtlh='curl wttr.in/~Luhe'
 alias wthk='curl wttr.in/~HongKong'

# -------------------------------------------------------------------
# Dev
# -------------------------------------------------------------------

# Hexo
 alias hnb="hexo new blog"
 alias hbuild="git add --all && git commit -m 'Normal build' && git push origin master && git subtree push --prefix=themes/next next master --squash"

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

plugins=(git zsh-syntax-highlighting zsh-autosuggestions extract autojump sublime web-search)

source $ZSH/oh-my-zsh.sh

# Chinese Support
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Proxy
export https_proxy=http://127.0.0.1:6152;export http_proxy=http://127.0.0.1:6152;export all_proxy=socks5://127.0.0.1:6153

# Homebrew
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#export FZF_DEFAULT_OPS="--extended"
#export FZF_DEFAULT_COMMAND='fd --exclude={.git,.idea,.vscode,.sass-cache,node_modules,build} --type f'
#export FZF_CTRL_T_COMMAND='fd --type f'
#export FZF_ALT_C_COMMAND='fd --type d'
#export FZF_COMPLETION_TRIGGER=''
#export FZF_DEFAULT_OPTS="--height 40% --reverse --border --prompt '>>>' \
#    --bind 'alt-j:preview-down,alt-k:preview-up,alt-v:execute(vi {})+abort,ctrl-y:execute-silent(cat {} | pbcopy)+abort,?:toggle-preview' \
#    --header 'A-j/k: preview down/up, A-v: open in vim, C-y: copy, ?: toggle preview' \
#    --preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null'"
#export FZF_CTRL_T_OPTS=$FZF_DEFAULT_OPTS
#export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window hidden:wrap --bind '?:toggle-preview'"
#export FZF_ALT_C_OPTS="--height 40% --reverse --border --prompt '>>>' \
#    --bind 'alt-j:preview-down,alt-k:preview-up,?:toggle-preview' \
#    --header 'A-j/k: preview down/up, A-v: open in vim, C-y: copy, ?: toggle preview' \
#    --preview 'tree -C {}'"
#bindkey '^T' fzf-completion
#bindkey '^I' $fzf_default_completion
