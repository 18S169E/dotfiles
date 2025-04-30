# ~/.config/dotfiles/bash/aliases.sh

# ls 颜色与简易别名
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# 编辑器快捷
alias nv='nvim'
# alias vim='nvim'

# Git 可视化
alias gl='git log --graph --decorate'

# Chrome 与 Typora 路径
alias open="/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe"
alias typora="\"/mnt/d/应用/Typora/Typora/Typora.exe\""

# Hugo 博客目录快速跳转
alias log='cd ~/CPP_learning/blog_hugo/content/posts/'

# 警告通知
# alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" \
# "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')" 

# 项目快捷
alias x='cd ~/ysyx-workbench/nemu/'
alias ..='cd .. && pwd'
alias ...='cd ../.. && pwd'
alias v='vim'
alias p='pwd'
alias nvconfig='cd ~/.config/nvim'
alias ysyx='tmux attach -t ysyx'
